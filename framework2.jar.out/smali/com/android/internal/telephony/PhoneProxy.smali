.class public Lcom/android/internal/telephony/PhoneProxy;
.super Landroid/os/Handler;
.source "PhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;
.implements Lcom/android/internal/telephony/HtcIfPhoneProxy;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_PDN_SETTING_INTERFACE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_PDN_SETTING_INTERFACE:Z = false

.field private static final EVENT_ENTER_LPM:I = 0x2

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x65

.field private static final EVENT_GET_IMEISV_DONE:I = 0x67

.field private static final EVENT_GET_IMEI_DONE:I = 0x66

.field private static final EVENT_HTC_GET_DEVICE_MFG_CODE_IN_NV:I = 0x6f

.field private static final EVENT_HTC_GET_PDN_SETTING2:I = 0x6a

.field private static final EVENT_HTC_GET_PDN_SETTING2_CONT:I = 0x6b

.field private static final EVENT_HTC_GET_PDN_SETTING2_RESULT:I = 0x6c

.field private static final EVENT_HTC_SET_PDN_SETTING2:I = 0x6d

.field private static final EVENT_HTC_SET_PDN_SETTING2_RESULT:I = 0x6e

.field private static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x69

.field private static final EVENT_RADIO_AVAILABLE:I = 0x68

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x4

.field private static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x1

.field protected static final EVENT_REQUESET_PHONE_CLASS_CHANGE_DONE:I = 0x64

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7

.field private static final EVENT_SET_RADIO_POWER:I = 0x6

.field private static final EVENT_VOICE_RADIO_TECHNOLOGY_CHANGED:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static final pdnIpTypes:[Ljava/lang/String;

.field private static final pdnLables_Spcs:[Ljava/lang/String;

.field private static final pdnLables_Vzw:[Ljava/lang/String;


# instance fields
.field protected mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mCdmaPhone:Lcom/android/internal/telephony/Phone;

.field protected mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mDesiredPowerState:Z

.field private mDeviceMfgCodeRequested:Ljava/lang/Integer;

.field private mEsn:Ljava/lang/String;

.field private mGsmPhone:Lcom/android/internal/telephony/Phone;

.field private mHtcAccountInfos:Lcom/android/internal/telephony/HtcAccountInfos;

.field private mHtcMfgCode:Lcom/android/internal/telephony/HtcMfgCode;

.field private mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

.field private mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

.field private mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field protected mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mMeid:Ljava/lang/String;

.field protected mOutgoingPhone:Ljava/lang/String;

.field protected mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mResetModemOnRadioTechnologyChange:Z

.field private mSubGsmPhone:Lcom/android/internal/telephony/Phone;

.field private notifyModemStorageStatus:Z

.field private rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    .line 2346
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x52

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x64

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x54

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x55

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    .line 2362
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/PhoneProxy;->DEBUG_PDN_SETTING_INTERFACE:Z

    .line 2542
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "IPv4"

    aput-object v3, v0, v1

    const-string v3, "IPv6"

    aput-object v3, v0, v2

    const-string v3, "IPv4v6"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    .line 2679
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v0, v1

    const-string v3, "2"

    aput-object v3, v0, v2

    const-string v3, "3"

    aput-object v3, v0, v5

    const-string v3, "4"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "5"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Vzw:[Ljava/lang/String;

    .line 2680
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "ota"

    aput-object v3, v0, v1

    const-string v1, "internet"

    aput-object v1, v0, v2

    const-string v1, "pam"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Spcs:[Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    .line 2346
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 93
    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 137
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    .line 138
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 150
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v4, Lcom/android/internal/telephony/IccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 157
    :cond_0
    const-string v1, "persist.radio.reset_on_switch"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 159
    new-instance v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    .line 161
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 163
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 169
    new-instance v1, Lcom/android/internal/telephony/HtcMfgCode;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/HtcMfgCode;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcMfgCode:Lcom/android/internal/telephony/HtcMfgCode;

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x68

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForEnterLowPowerMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, airplaneMode:I
    if-gtz v0, :cond_6

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    .end local v0           #airplaneMode:I
    :cond_1
    const-string v1, "htctelephonyinternal"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 203
    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    .line 204
    const-string v1, "PHONE"

    const-string v2, "ServiceManager.addService:htctelephonyinternal"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v1, "htctelephonyinternal"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 211
    :cond_2
    const-string v1, "htctelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->enableFullyIHtcTelephony:Z

    if-nez v1, :cond_3

    .line 212
    new-instance v1, Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/HtcTelephony;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    .line 213
    const-string v1, "PHONE"

    const-string v2, "ServiceManager.addService:htctelephony"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v1, "htctelephony"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->sendEmergencyPlusCallBackModeStatus(Z)V

    .line 226
    :cond_4
    new-instance v1, Lcom/android/internal/telephony/HtcAccountInfos;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/HtcAccountInfos;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcAccountInfos:Lcom/android/internal/telephony/HtcAccountInfos;

    .line 228
    return-void

    :cond_5
    move v1, v3

    .line 157
    goto/16 :goto_0

    .restart local v0       #airplaneMode:I
    :cond_6
    move v2, v3

    .line 194
    goto :goto_1
.end method

.method private getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "mmdctClass"

    .prologue
    .line 2452
    move-object v0, p1

    .line 2453
    .local v0, mmdt:Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 2454
    instance-of v1, p1, Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 2455
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 2458
    .end local v0           #mmdt:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private getMMDataConnectionTrackerClass()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2442
    const/4 v0, 0x0

    .line 2444
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v2, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 2448
    :goto_0
    return-object v1

    .line 2445
    :catch_0
    move-exception v1

    .line 2446
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V
    .locals 11
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"
    .parameter "remainingHandling"

    .prologue
    .line 2788
    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_1

    .line 2789
    iget-object v8, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 2790
    .local v3, msgDataArray:[Ljava/lang/Object;
    const/4 v8, 0x1

    aget-object v8, v3, v8

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    move-object v4, v8

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    .line 2791
    .local v4, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x2

    aget-object v8, v3, v8

    check-cast v8, Landroid/os/Message;

    move-object v6, v8

    check-cast v6, Landroid/os/Message;

    .line 2792
    .local v6, request:Landroid/os/Message;
    const/4 v8, 0x3

    aget-object v8, v3, v8

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 2794
    .local v7, result:[Ljava/lang/String;
    iget-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    .line 2796
    iget-object v8, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v8, v7}, Lcom/android/internal/telephony/PhoneProxy;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2799
    const/4 v8, 0x0

    aget-object v8, v3, v8

    check-cast v8, [Ljava/lang/String;

    move-object v1, v8

    check-cast v1, [Ljava/lang/String;

    .line 2800
    .local v1, knownPdns:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2801
    .local v0, index:I
    :goto_0
    array-length v8, v1

    if-ge v0, v8, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2802
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2804
    :cond_0
    array-length v8, v1

    if-ge v0, v8, :cond_2

    .line 2805
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    new-instance v5, Lcom/android/internal/telephony/APNParam;

    aget-object v8, v1, v0

    iget v9, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-direct {v5, v8, v9}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2807
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .local v5, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/16 v8, 0x6b

    invoke-virtual {p4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2808
    .local v2, msg:Landroid/os/Message;
    const/4 v8, 0x1

    aput-object v5, v3, v8

    .line 2809
    const/4 v8, 0x3

    aput-object v7, v3, v8

    .line 2810
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 2811
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2812
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-direct {p0, v5, v2, v8}, Lcom/android/internal/telephony/PhoneProxy;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v8

    iput-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v5

    .line 2822
    .end local v0           #index:I
    .end local v1           #knownPdns:[Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    .end local v5           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :goto_1
    iget-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    .line 2823
    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/telephony/PhoneProxy;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2826
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2829
    .end local v3           #msgDataArray:[Ljava/lang/Object;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v6           #request:Landroid/os/Message;
    .end local v7           #result:[Ljava/lang/String;
    :cond_1
    return-void

    .line 2815
    .restart local v0       #index:I
    .restart local v1       #knownPdns:[Ljava/lang/String;
    .restart local v3       #msgDataArray:[Ljava/lang/Object;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v6       #request:Landroid/os/Message;
    .restart local v7       #result:[Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "End of query PDN(cont)"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1

    .line 2819
    .end local v0           #index:I
    .end local v1           #knownPdns:[Ljava/lang/String;
    :cond_3
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 7
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2832
    sget-boolean v4, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v4, :cond_0

    .line 2833
    iget-object v4, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    .line 2834
    .local v1, msgDataArray:[Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    iget-object v0, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2835
    .local v0, currPdn:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Landroid/os/Message;

    move-object v2, v4

    check-cast v2, Landroid/os/Message;

    .line 2836
    .local v2, request:Landroid/os/Message;
    const/4 v4, 0x3

    aget-object v4, v1, v4

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 2838
    .local v3, result:[Ljava/lang/String;
    iget-object v4, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 2839
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query PDN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iget-object v4, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v4, v3}, Lcom/android/internal/telephony/PhoneProxy;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2846
    :goto_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/telephony/PhoneProxy;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v3, :cond_2

    iget-object v4, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-static {v2, v5, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2849
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2851
    .end local v0           #currPdn:Ljava/lang/String;
    .end local v1           #msgDataArray:[Ljava/lang/Object;
    .end local v2           #request:Landroid/os/Message;
    .end local v3           #result:[Ljava/lang/String;
    :cond_0
    return-void

    .line 2843
    .restart local v0       #currPdn:Ljava/lang/String;
    .restart local v1       #msgDataArray:[Ljava/lang/Object;
    .restart local v2       #request:Landroid/os/Message;
    .restart local v3       #result:[Ljava/lang/String;
    :cond_1
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query PDN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2846
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 17
    .parameter "requestType"
    .parameter "requestObj"
    .parameter "remainingHandling"

    .prologue
    .line 2688
    const/4 v14, 0x1

    aget-object v13, p2, v14

    check-cast v13, Landroid/os/Message;

    .line 2689
    .local v13, request:Landroid/os/Message;
    if-eqz v13, :cond_3

    .line 2690
    const/4 v1, 0x0

    .line 2691
    .local v1, errorResult:Ljava/lang/Exception;
    const/4 v14, 0x0

    aget-object v14, p2, v14

    check-cast v14, [Ljava/lang/String;

    move-object v12, v14

    check-cast v12, [Ljava/lang/String;

    .line 2692
    .local v12, queryCmds:[Ljava/lang/String;
    sget-boolean v14, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v14, :cond_8

    if-eqz v12, :cond_8

    .line 2693
    const/4 v3, 0x0

    .line 2694
    .local v3, givenProjectId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2695
    .local v2, givenNetworkType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2697
    .local v4, givenQueryPdn:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2714
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 2715
    .local v6, msg:Landroid/os/Message;
    const/4 v14, 0x4

    new-array v7, v14, [Ljava/lang/Object;

    .line 2717
    .local v7, msgDataArray:[Ljava/lang/Object;
    move-object v10, v4

    .line 2718
    .local v10, pdnType:Ljava/lang/String;
    const-string v14, "PHONE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    .line 2720
    :cond_1
    const/4 v11, -0x1

    .line 2722
    .local v11, project:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 2724
    :goto_1
    const/4 v5, 0x0

    .line 2725
    .local v5, knownPdns:[Ljava/lang/String;
    sparse-switch v11, :sswitch_data_0

    .line 2729
    :goto_2
    if-eqz v5, :cond_4

    .line 2730
    const/4 v14, 0x0

    aput-object v5, v7, v14

    .line 2731
    const/4 v14, 0x0

    aget-object v10, v5, v14

    .line 2732
    const/16 v14, 0x6b

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2742
    .end local v5           #knownPdns:[Ljava/lang/String;
    .end local v11           #project:I
    :goto_3
    const/4 v9, 0x0

    .line 2743
    .local v9, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x0

    .line 2744
    .local v8, networkType:I
    if-eqz v10, :cond_2

    .line 2746
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 2748
    :goto_4
    sparse-switch v8, :sswitch_data_1

    .line 2761
    :cond_2
    :goto_5
    if-eqz v9, :cond_6

    .line 2762
    const/4 v14, 0x1

    aput-object v9, v7, v14

    .line 2763
    const/4 v14, 0x2

    aput-object v13, v7, v14

    .line 2764
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput-object v15, v7, v14

    .line 2765
    move/from16 v0, p1

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 2766
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2767
    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v14}, Lcom/android/internal/telephony/PhoneProxy;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v1

    .line 2779
    .end local v2           #givenNetworkType:Ljava/lang/String;
    .end local v3           #givenProjectId:Ljava/lang/String;
    .end local v4           #givenQueryPdn:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #msgDataArray:[Ljava/lang/Object;
    .end local v8           #networkType:I
    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v10           #pdnType:Ljava/lang/String;
    :goto_6
    if-eqz v1, :cond_3

    .line 2780
    const/4 v14, 0x0

    invoke-static {v13, v14, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2781
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 2785
    .end local v1           #errorResult:Ljava/lang/Exception;
    .end local v12           #queryCmds:[Ljava/lang/String;
    :cond_3
    return-void

    .line 2699
    .restart local v1       #errorResult:Ljava/lang/Exception;
    .restart local v2       #givenNetworkType:Ljava/lang/String;
    .restart local v3       #givenProjectId:Ljava/lang/String;
    .restart local v4       #givenQueryPdn:Ljava/lang/String;
    .restart local v12       #queryCmds:[Ljava/lang/String;
    :pswitch_0
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 2700
    const/16 v14, 0xa8

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2701
    const/4 v14, 0x0

    aget-object v2, v12, v14

    .line 2702
    const/4 v14, 0x1

    aget-object v4, v12, v14

    goto/16 :goto_0

    .line 2706
    :pswitch_1
    array-length v14, v12

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 2707
    const/4 v14, 0x0

    aget-object v3, v12, v14

    .line 2708
    const/4 v14, 0x1

    aget-object v2, v12, v14

    .line 2709
    const/4 v14, 0x2

    aget-object v4, v12, v14

    goto/16 :goto_0

    .line 2726
    .restart local v5       #knownPdns:[Ljava/lang/String;
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v7       #msgDataArray:[Ljava/lang/Object;
    .restart local v10       #pdnType:Ljava/lang/String;
    .restart local v11       #project:I
    :sswitch_0
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Vzw:[Ljava/lang/String;

    goto :goto_2

    .line 2727
    :sswitch_1
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Spcs:[Ljava/lang/String;

    goto :goto_2

    .line 2735
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 2739
    .end local v5           #knownPdns:[Ljava/lang/String;
    .end local v11           #project:I
    :cond_5
    const/16 v14, 0x6c

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    goto :goto_3

    .line 2750
    .restart local v8       #networkType:I
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :sswitch_2
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x1

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2751
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2753
    :sswitch_3
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x2

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2754
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2756
    :sswitch_4
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x4

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2770
    :cond_6
    const-string v15, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN parm incorrect "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v12, :cond_7

    array-length v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    new-instance v1, Ljava/lang/Exception;

    .end local v1           #errorResult:Ljava/lang/Exception;
    const-string v14, "Incorrect Format"

    invoke-direct {v1, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1       #errorResult:Ljava/lang/Exception;
    goto :goto_6

    .line 2770
    :cond_7
    const-string v14, "null"

    goto :goto_7

    .line 2775
    .end local v2           #givenNetworkType:Ljava/lang/String;
    .end local v3           #givenProjectId:Ljava/lang/String;
    .end local v4           #givenQueryPdn:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #msgDataArray:[Ljava/lang/Object;
    .end local v8           #networkType:I
    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v10           #pdnType:Ljava/lang/String;
    :cond_8
    const-string v15, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN parm incorrect "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v12, :cond_9

    array-length v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v16, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    new-instance v1, Ljava/lang/Exception;

    .end local v1           #errorResult:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incorrect Parameters - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1       #errorResult:Ljava/lang/Exception;
    goto/16 :goto_6

    .line 2775
    :cond_9
    const-string v14, "null"

    goto :goto_8

    .line 2723
    .restart local v2       #givenNetworkType:Ljava/lang/String;
    .restart local v3       #givenProjectId:Ljava/lang/String;
    .restart local v4       #givenQueryPdn:Ljava/lang/String;
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v7       #msgDataArray:[Ljava/lang/Object;
    .restart local v10       #pdnType:Ljava/lang/String;
    .restart local v11       #project:I
    :catch_0
    move-exception v14

    goto/16 :goto_1

    .line 2747
    .end local v11           #project:I
    .restart local v8       #networkType:I
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catch_1
    move-exception v14

    goto/16 :goto_4

    .line 2697
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2725
    :sswitch_data_0
    .sparse-switch
        0x94 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    .line 2748
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xd -> :sswitch_4
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 575
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method private notifyModemStorageAvalibility()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4156
    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->htcRadioOnWhenStorageAreaNotAvaliable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4157
    iget-boolean v6, p0, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageStatus:Z

    if-eqz v6, :cond_0

    .line 4160
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageStatus:Z

    .line 4162
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    .line 4164
    .local v3, storageAval:Ljava/lang/Boolean;
    :try_start_0
    const-string v6, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4165
    .local v0, cls:Ljava/lang/Class;
    const-string v6, "requestSetEncryptionState"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4166
    .local v2, mth:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4172
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #mth:Ljava/lang/reflect/Method;
    .end local v3           #storageAval:Ljava/lang/Boolean;
    :cond_1
    :goto_1
    return-void

    .restart local v0       #cls:Ljava/lang/Class;
    .restart local v2       #mth:Ljava/lang/reflect/Method;
    .restart local v3       #storageAval:Ljava/lang/Boolean;
    :cond_2
    move v4, v5

    .line 4166
    goto :goto_0

    .line 4168
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #mth:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 4169
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setup storage fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private pdnIpTypeLookup(Ljava/lang/String;)I
    .locals 2
    .parameter "givenType"

    .prologue
    .line 2545
    const/4 v0, 0x0

    .line 2546
    .local v0, type:I
    if-eqz p1, :cond_0

    .line 2547
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 2548
    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2549
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2552
    :cond_0
    return v0
.end method

.method private processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "resultType"
    .parameter "result"
    .parameter "prevResults"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2556
    move-object v0, p3

    .line 2557
    .local v0, currResults:[Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_a

    move-object v4, p2

    .line 2558
    check-cast v4, Lcom/android/internal/telephony/APNParam;

    .line 2559
    .local v4, resultAPNParam:Lcom/android/internal/telephony/APNParam;
    if-eqz v4, :cond_a

    .line 2560
    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_0

    .line 2561
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query PDN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_0
    const/4 v3, 0x6

    .line 2564
    .local v3, itemsAdd:I
    packed-switch p1, :pswitch_data_0

    .line 2567
    :goto_0
    if-nez p3, :cond_b

    .line 2568
    add-int/lit8 v7, v3, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .line 2569
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 2578
    :cond_1
    if-lt v3, v5, :cond_2

    .line 2579
    :try_start_0
    array-length v7, v0

    sub-int/2addr v7, v3

    iget-object v8, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v8, v0, v7

    .line 2581
    :cond_2
    const/4 v7, 0x2

    if-lt v3, v7, :cond_3

    .line 2582
    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    iget v8, v4, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 2584
    :cond_3
    const/4 v7, 0x3

    if-lt v3, v7, :cond_4

    .line 2585
    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    iget v8, v4, Lcom/android/internal/telephony/APNParam;->state:I

    if-eqz v8, :cond_c

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 2587
    :cond_4
    const/4 v5, 0x4

    if-lt v3, v5, :cond_5

    .line 2588
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x3

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 2590
    :cond_5
    const/4 v5, 0x5

    if-lt v3, v5, :cond_6

    .line 2591
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v6, v5, 0x4

    iget v5, v4, Lcom/android/internal/telephony/APNParam;->type:I

    if-ltz v5, :cond_d

    iget v5, v4, Lcom/android/internal/telephony/APNParam;->type:I

    sget-object v7, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_d

    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    iget v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v5, v5, v7

    :goto_2
    aput-object v5, v0, v6

    .line 2594
    :cond_6
    const/4 v5, 0x6

    if-lt v3, v5, :cond_7

    .line 2595
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x5

    iget v6, v4, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 2597
    :cond_7
    const/4 v5, 0x7

    if-lt v3, v5, :cond_8

    .line 2598
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x6

    iget v6, v4, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 2600
    :cond_8
    const/16 v5, 0x8

    if-lt v3, v5, :cond_9

    .line 2601
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 2603
    :cond_9
    const/16 v5, 0x9

    if-lt v3, v5, :cond_a

    .line 2604
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x8

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2611
    .end local v3           #itemsAdd:I
    .end local v4           #resultAPNParam:Lcom/android/internal/telephony/APNParam;
    :cond_a
    :goto_3
    return-object v0

    .line 2565
    .restart local v3       #itemsAdd:I
    .restart local v4       #resultAPNParam:Lcom/android/internal/telephony/APNParam;
    :pswitch_0
    const/16 v3, 0x9

    goto/16 :goto_0

    .line 2572
    :cond_b
    array-length v7, p3

    add-int/2addr v7, v3

    new-array v0, v7, [Ljava/lang/String;

    .line 2573
    const/4 v2, 0x0

    .local v2, index:I
    :goto_4
    array-length v7, p3

    if-ge v2, v7, :cond_1

    .line 2574
    aget-object v7, p3, v2

    aput-object v7, v0, v2

    .line 2573
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #index:I
    :cond_c
    move v5, v6

    .line 2585
    goto :goto_1

    .line 2591
    :cond_d
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v5, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2606
    :catch_0
    move-exception v1

    .line 2607
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing PDN ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2564
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .parameter "requestType"
    .parameter "resultType"
    .parameter "prevResults"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 2620
    const/4 v0, 0x0

    .line 2621
    .local v0, currResults:Ljava/lang/Object;
    sget-boolean v4, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v4, :cond_0

    .line 2622
    packed-switch p1, :pswitch_data_0

    .line 2676
    .end local v0           #currResults:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 2625
    .restart local v0       #currResults:Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .line 2626
    .local v1, formattedResult:Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 2644
    :cond_1
    :goto_1
    move-object v0, v1

    .line 2646
    .local v0, currResults:Ljava/lang/String;
    goto :goto_0

    .line 2628
    .local v0, currResults:Ljava/lang/Object;
    :pswitch_1
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v5, :cond_1

    .line 2629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, p3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v4, "0"

    goto :goto_2

    .line 2636
    :pswitch_2
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v5, :cond_1

    .line 2637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, p3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "1"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const-string v4, "0"

    goto :goto_3

    .line 2649
    .end local v1           #formattedResult:Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 2650
    .local v1, formattedResult:[Ljava/lang/String;
    packed-switch p2, :pswitch_data_2

    .line 2671
    :cond_4
    :goto_4
    move-object v0, v1

    .local v0, currResults:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2653
    .local v0, currResults:Ljava/lang/Object;
    :pswitch_4
    const/4 v3, -0x1

    .line 2655
    .local v3, profLen:I
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2657
    :goto_5
    if-lez v3, :cond_4

    .line 2658
    move-object v1, p3

    .line 2659
    const/4 v2, 0x2

    .line 2660
    .local v2, index:I
    :goto_6
    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 2661
    add-int/lit8 v4, v2, -0x1

    aget-object v5, p3, v2

    aput-object v5, v1, v4

    .line 2662
    add-int/2addr v2, v3

    goto :goto_6

    .line 2668
    .end local v2           #index:I
    .end local v3           #profLen:I
    :pswitch_5
    move-object v1, p3

    goto :goto_4

    .line 2656
    .restart local v3       #profLen:I
    :catch_0
    move-exception v4

    goto :goto_5

    .line 2622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2626
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2650
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 14
    .parameter "pdnParam"
    .parameter "msg"
    .parameter "pdnArray"

    .prologue
    .line 2469
    const/4 v8, 0x0

    .line 2471
    .local v8, queryFail:Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v9, :cond_1

    .line 2472
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 2473
    .local v1, cls:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2474
    .local v6, mmdt:Ljava/lang/Object;
    if-eqz v6, :cond_7

    .line 2475
    instance-of v9, v6, Ljava/lang/Exception;

    if-nez v9, :cond_6

    .line 2476
    const/4 v4, 0x0

    .line 2478
    .local v4, methodAPNParam_get:Ljava/lang/reflect/Method;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    const-string v10, "getAPNParams"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lcom/android/internal/telephony/APNParam;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/os/Message;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 2481
    :goto_0
    if-eqz v4, :cond_2

    .line 2482
    const/4 v9, 0x2

    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg2:I

    .line 2483
    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v9, :cond_0

    .line 2484
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN2 with : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_0
    const/4 v9, 0x2

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2539
    .end local v1           #cls:Ljava/lang/Object;
    .end local v4           #methodAPNParam_get:Ljava/lang/reflect/Method;
    .end local v6           #mmdt:Ljava/lang/Object;
    .end local p3
    :cond_1
    :goto_1
    return-object v8

    .line 2488
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local v4       #methodAPNParam_get:Ljava/lang/reflect/Method;
    .restart local v6       #mmdt:Ljava/lang/Object;
    .restart local p3
    :catch_0
    move-exception v2

    .line 2489
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN2 error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    move-object v8, v2

    .line 2491
    goto :goto_1

    .line 2494
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v7, -0x1

    .line 2496
    .local v7, profileIndex:I
    :try_start_2
    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 2507
    .end local p3
    :cond_3
    if-ltz v7, :cond_5

    .line 2508
    const/4 v5, 0x0

    .line 2509
    .local v5, methodName:Ljava/lang/String;
    iget v9, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v9, :pswitch_data_0

    .line 2515
    :goto_2
    :pswitch_0
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    .end local v1           #cls:Ljava/lang/Object;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v1, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2516
    const/4 v9, 0x1

    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg2:I

    .line 2517
    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v9, :cond_4

    .line 2518
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN1 with : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :cond_4
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2521
    :catch_1
    move-exception v2

    .line 2522
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    move-object v8, v2

    goto/16 :goto_1

    .line 2497
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #methodName:Ljava/lang/String;
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local p3
    :catch_2
    move-exception v2

    .line 2498
    .restart local v2       #ex:Ljava/lang/Exception;
    if-eqz p3, :cond_3

    .line 2499
    check-cast p3, [Ljava/lang/String;

    .end local p3
    move-object/from16 v3, p3

    check-cast v3, [Ljava/lang/String;

    .line 2500
    .local v3, knownPdns:[Ljava/lang/String;
    array-length v9, v3

    add-int/lit8 v7, v9, -0x1

    .line 2501
    :goto_3
    if-ltz v7, :cond_3

    aget-object v9, v3, v7

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2502
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2510
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #knownPdns:[Ljava/lang/String;
    .restart local v5       #methodName:Ljava/lang/String;
    :pswitch_1
    const-string v5, "get3GPPAPNParams"

    goto :goto_2

    .line 2511
    :pswitch_2
    const-string v5, "getEHRPDAPNParams"

    goto/16 :goto_2

    .line 2512
    :pswitch_3
    const-string v5, "getLTEAPNParams"

    goto/16 :goto_2

    .line 2527
    .end local v5           #methodName:Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/Exception;

    .end local v8           #queryFail:Ljava/lang/Exception;
    const-string v9, "Only supported PDN1 format"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8       #queryFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v4           #methodAPNParam_get:Ljava/lang/reflect/Method;
    .end local v7           #profileIndex:I
    .restart local p3
    :cond_6
    move-object v8, v6

    .line 2532
    check-cast v8, Ljava/lang/Exception;

    goto/16 :goto_1

    .line 2535
    :cond_7
    if-nez v8, :cond_1

    .line 2536
    new-instance v8, Ljava/lang/Exception;

    .end local v8           #queryFail:Ljava/lang/Exception;
    const-string v9, "MMDct not created"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8       #queryFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .line 2479
    .restart local v4       #methodAPNParam_get:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 2509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private requestPhoneClassChangeDone(ZILandroid/os/Message;)Z
    .locals 8
    .parameter "phoneTypeChanged"
    .parameter "phoneType"
    .parameter "response"

    .prologue
    .line 2148
    const/4 v2, 0x1

    .line 2149
    .local v2, requestSend:Z
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 2151
    :try_start_0
    const-string v3, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2152
    .local v0, cls:Ljava/lang/Class;
    const-string v3, "requestPhoneClassChangeDone"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2156
    .end local v0           #cls:Ljava/lang/Class;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 2157
    const/4 v2, 0x0

    .line 2158
    const-string v3, "PHONE"

    const-string v4, "RIL interface PhoneClassChange with phoneType not existed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    if-eqz v2, :cond_1

    .line 2163
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2169
    :cond_1
    :goto_1
    return v2

    .line 2153
    :catch_0
    move-exception v1

    .line 2154
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 2164
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2165
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 2166
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Ljava/lang/Exception;
    .locals 13
    .parameter "pdnParam"
    .parameter "msg"

    .prologue
    .line 2861
    const/4 v7, 0x0

    .line 2863
    .local v7, setFail:Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_1

    .line 2864
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 2865
    .local v1, cls:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2866
    .local v5, mmdt:Ljava/lang/Object;
    if-eqz v5, :cond_6

    .line 2867
    instance-of v8, v5, Ljava/lang/Exception;

    if-nez v8, :cond_5

    .line 2868
    const/4 v3, 0x0

    .line 2870
    .local v3, methodAPNParam_set:Ljava/lang/reflect/Method;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v8, v0

    const-string v9, "setAPNParams"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/android/internal/telephony/APNParam;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/Message;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 2873
    :goto_0
    if-eqz v3, :cond_2

    .line 2874
    const/4 v8, 0x2

    iput v8, p2, Landroid/os/Message;->arg2:I

    .line 2875
    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_0

    .line 2876
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN2 with : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_0
    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2929
    .end local v1           #cls:Ljava/lang/Object;
    .end local v3           #methodAPNParam_set:Ljava/lang/reflect/Method;
    .end local v5           #mmdt:Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v7

    .line 2880
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local v3       #methodAPNParam_set:Ljava/lang/reflect/Method;
    .restart local v5       #mmdt:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 2881
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN2 error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    move-object v7, v2

    .line 2883
    goto :goto_1

    .line 2886
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v6, -0x1

    .line 2888
    .local v6, profileIndex:I
    :try_start_2
    iget-object v8, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 2891
    :goto_2
    const/4 v8, 0x1

    if-lt v6, v8, :cond_4

    .line 2892
    add-int/lit8 v6, v6, -0x1

    .line 2893
    const/4 v4, 0x0

    .line 2894
    .local v4, methodName:Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v8, :pswitch_data_0

    .line 2901
    :goto_3
    :pswitch_0
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    .end local v1           #cls:Ljava/lang/Object;
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2904
    const/4 v8, 0x1

    iput v8, p2, Landroid/os/Message;->arg2:I

    .line 2905
    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->DEBUG_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_3

    .line 2906
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN1 with : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_3
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2911
    :catch_1
    move-exception v2

    .line 2912
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    move-object v7, v2

    goto/16 :goto_1

    .line 2895
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #cls:Ljava/lang/Object;
    :pswitch_1
    const-string v4, "set3GPPAPNParams"

    goto/16 :goto_3

    .line 2896
    :pswitch_2
    const-string v4, "setEHRPDAPNParams"

    goto/16 :goto_3

    .line 2897
    :pswitch_3
    const-string v4, "setLTEAPNParams"

    goto/16 :goto_3

    .line 2917
    .end local v4           #methodName:Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/Exception;

    .end local v7           #setFail:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only supported PDN1 format : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v7       #setFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v3           #methodAPNParam_set:Ljava/lang/reflect/Method;
    .end local v6           #profileIndex:I
    :cond_5
    move-object v7, v5

    .line 2922
    check-cast v7, Ljava/lang/Exception;

    goto/16 :goto_1

    .line 2925
    :cond_6
    if-nez v7, :cond_1

    .line 2926
    new-instance v7, Ljava/lang/Exception;

    .end local v7           #setFail:Ljava/lang/Exception;
    const-string v8, "MMDct not created"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v7       #setFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .line 2889
    .restart local v3       #methodAPNParam_set:Ljava/lang/reflect/Method;
    .restart local v6       #profileIndex:I
    :catch_2
    move-exception v8

    goto/16 :goto_2

    .line 2871
    .end local v6           #profileIndex:I
    :catch_3
    move-exception v8

    goto/16 :goto_0

    .line 2894
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 4
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 3043
    iget-object v0, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 3044
    .local v0, request:Landroid/os/Message;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    if-eqz v0, :cond_0

    .line 3046
    const/4 v1, 0x0

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3047
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3049
    :cond_0
    return-void
.end method

.method private setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 10
    .parameter "requestType"
    .parameter "requestObj"
    .parameter "remainingHandling"

    .prologue
    .line 2938
    const/4 v0, 0x0

    .line 2939
    .local v0, errorResult:Ljava/lang/Exception;
    const/4 v7, 0x0

    aget-object v7, p2, v7

    check-cast v7, [Ljava/lang/String;

    move-object v5, v7

    check-cast v5, [Ljava/lang/String;

    .line 2940
    .local v5, queryCmds:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v6, p2, v7

    check-cast v6, Landroid/os/Message;

    .line 2941
    .local v6, request:Landroid/os/Message;
    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 2942
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    invoke-direct {v4}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 2943
    .local v4, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/16 v7, 0x6e

    invoke-virtual {p3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2944
    .local v2, msg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 3021
    const-string v8, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN parm incorrect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_5

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    new-instance v0, Ljava/lang/Exception;

    .end local v0           #errorResult:Ljava/lang/Exception;
    const-string v7, "Incorrect Parameters"

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3025
    .restart local v0       #errorResult:Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 3026
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 3027
    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3028
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/PhoneProxy;->setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Ljava/lang/Exception;

    move-result-object v0

    .line 3036
    .end local v2           #msg:Landroid/os/Message;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    .line 3037
    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3038
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3040
    :cond_2
    return-void

    .line 2947
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :pswitch_0
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    const/4 v3, 0x0

    .line 2950
    .local v3, networkType:I
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v3

    .line 2952
    :goto_3
    sparse-switch v3, :sswitch_data_0

    .line 2961
    const/4 v7, 0x4

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2965
    :goto_4
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2969
    :goto_5
    if-nez v0, :cond_0

    .line 2970
    const/4 v7, 0x2

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2972
    const/4 v7, 0x3

    :try_start_2
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_6
    iput v7, v4, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 2974
    :goto_7
    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2976
    const/4 v7, 0x5

    :try_start_3
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 2978
    :goto_8
    const/4 v7, 0x6

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 2954
    :sswitch_0
    const/4 v7, 0x1

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_4

    .line 2957
    :sswitch_1
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_4

    .line 2966
    :catch_0
    move-exception v1

    .line 2967
    .local v1, ex:Ljava/lang/Exception;
    move-object v0, v1

    goto :goto_5

    .line 2972
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    goto :goto_6

    .line 2984
    .end local v3           #networkType:I
    :pswitch_1
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    const/4 v3, 0x0

    .line 2987
    .restart local v3       #networkType:I
    const/4 v7, 0x1

    :try_start_4
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v3

    .line 2989
    :goto_9
    sparse-switch v3, :sswitch_data_1

    .line 2998
    const/4 v7, 0x4

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 3001
    :goto_a
    const/4 v7, 0x2

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 3003
    const/4 v7, 0x3

    :try_start_5
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3006
    :goto_b
    const/4 v7, 0x4

    :try_start_6
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_c
    iput v7, v4, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 3008
    :goto_d
    const/4 v7, 0x5

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 3009
    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    .line 3011
    const/4 v7, 0x7

    :try_start_7
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 3014
    :goto_e
    const/16 v7, 0x8

    :try_start_8
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->authType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 3016
    :goto_f
    const/16 v7, 0x9

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 3017
    const/16 v7, 0xa

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    goto/16 :goto_1

    .line 2991
    :sswitch_2
    const/4 v7, 0x1

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_a

    .line 2994
    :sswitch_3
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_a

    .line 3006
    :cond_4
    const/4 v7, 0x0

    goto :goto_c

    .line 3021
    .end local v3           #networkType:I
    :cond_5
    const-string v7, "null"

    goto/16 :goto_0

    .line 3032
    .end local v2           #msg:Landroid/os/Message;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_6
    const-string v8, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN parm incorrect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_7

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_10
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    new-instance v0, Ljava/lang/Exception;

    .end local v0           #errorResult:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect Parameters - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v0       #errorResult:Ljava/lang/Exception;
    goto/16 :goto_2

    .line 3032
    :cond_7
    const-string v7, "null"

    goto :goto_10

    .line 3015
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #networkType:I
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catch_1
    move-exception v7

    goto :goto_f

    .line 3012
    :catch_2
    move-exception v7

    goto :goto_e

    .line 3007
    :catch_3
    move-exception v7

    goto/16 :goto_d

    .line 3004
    :catch_4
    move-exception v7

    goto/16 :goto_b

    .line 2988
    :catch_5
    move-exception v7

    goto/16 :goto_9

    .line 2977
    :catch_6
    move-exception v7

    goto/16 :goto_8

    .line 2973
    :catch_7
    move-exception v7

    goto/16 :goto_7

    .line 2951
    :catch_8
    move-exception v7

    goto/16 :goto_3

    .line 2944
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2952
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 2989
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private declared-synchronized setPowerStateToDesired()V
    .locals 4

    .prologue
    .line 3246
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerStateToDesired : mDesiredPowerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRadioState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 3250
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 3252
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3253
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3261
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3255
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3256
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3258
    .local v0, powerOffMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3246
    .end local v0           #powerOffMsg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public HtcisDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->HtcisDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 825
    return-void
.end method

.method public acceptCallExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3589
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1292
    return-void
.end method

.method public activateCellBroadcastSmsExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "activate"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3858
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canConferenceExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3598
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public canTransferExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3605
    const/4 v0, 0x0

    return v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBFacility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1493
    return-void
.end method

.method public checkFDNCapability()Z
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->checkFDNCapability()Z

    move-result v0

    return v0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 1497
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->checkTestIcc()Z

    move-result v0

    .line 1504
    :goto_0
    return v0

    .line 1501
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1504
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->checkTestIcc()Z

    move-result v0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 861
    return-void
.end method

.method public clearDisconnectedExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3612
    return-void
.end method

.method public clearVoiceMessageWaiting()V
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearVoiceMessageWaiting()V

    .line 1512
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 841
    return-void
.end method

.method public conferenceExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3602
    return-void
.end method

.method public confirmFirstDataRoaming()V
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->confirmFirstDataRoaming()V

    .line 1214
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialExt(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3627
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialExt(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3631
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3808
    const/4 v0, 0x0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 617
    return-void
.end method

.method public disableDnsCheckExt(ZI)V
    .locals 0
    .parameter "b"
    .parameter "phoneType"

    .prologue
    .line 3457
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1131
    return-void
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3777
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3804
    const/4 v0, 0x0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 845
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1127
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3774
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableMpdp(Z)V

    .line 3148
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1361
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 857
    return-void
.end method

.method public explicitCallTransferExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3609
    return-void
.end method

.method public genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    .line 2298
    return-void
.end method

.method public getAccountInfos()[Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 4177
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcAccountInfos:Lcom/android/internal/telephony/HtcAccountInfos;

    if-nez v0, :cond_0

    .line 4178
    const/4 v0, 0x0

    .line 4180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcAccountInfos:Lcom/android/internal/telephony/HtcAccountInfos;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mSubGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountInfos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)[Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3419
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesExt(I)[Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3472
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveCid()I
    .locals 1

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveCid()I

    move-result v0

    return v0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActivePDPList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 3937
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1048
    return-void
.end method

.method public getAvailableNetworksAppendAcT(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworksAppendAcT(Landroid/os/Message;)V

    .line 2228
    return-void
.end method

.method public getAvailableNetworksExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3717
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3619
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBandCapability()I
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBandCapability()I

    move-result v0

    return v0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallBarringOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBReason"
    .parameter "onComplete"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(ILandroid/os/Message;)V

    .line 1517
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingIndicatorExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3659
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1002
    return-void
.end method

.method public getCallForwardingOptionExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3693
    return-void
.end method

.method public getCallType()Lcom/android/internal/telephony/Phone$CallType;
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallType()Lcom/android/internal/telephony/Phone$CallType;

    move-result-object v0

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1040
    return-void
.end method

.method public getCallWaitingExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3711
    return-void
.end method

.method public getCdmaEriFileVersion()I
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriFileVersion()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1296
    return-void
.end method

.method public getCellBroadcastSmsConfigExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3861
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3444
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityStateExt(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3452
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataCallForwardingOption(ILandroid/os/Message;)V

    .line 1009
    return-void
.end method

.method public getDataCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataCallForwardingStatus()Z

    move-result v0

    return v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1119
    return-void
.end method

.method public getDataCallListExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3758
    return-void
.end method

.method public getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3400
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateExt(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3448
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 2
    .parameter "apnType"

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionStateTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3793
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 1521
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getDetailIccStatus()[I

    move-result-object v0

    .line 1528
    :goto_0
    return-object v0

    .line 1525
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3434
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3824
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3828
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 3379
    const/4 v0, 0x1

    return v0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 3377
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 849
    return-void
.end method

.method public getEntitleErrorCause()I
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEntitleErrorCause()I

    move-result v0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFdnEnabledStatus()Z
    .locals 1

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getFdnEnabledStatus()Z

    move-result v0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3615
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 4

    .prologue
    .line 3272
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    .line 3273
    .local v0, result:I
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalDataRoamingOption:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    return v0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGprsState()I

    move-result v0

    return v0
.end method

.method public getGprsStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3978
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHtcSimTypes(Landroid/os/Message;)V

    .line 1081
    return-void
.end method

.method public getICCRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 815
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 818
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccCardExt(I)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3585
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerExt(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3848
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 801
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v0

    .line 808
    :goto_0
    return v0

    .line 805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public getIccRecordsLoadedExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3581
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3836
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManagerExt(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3844
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1253
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x55

    if-ne v0, v1, :cond_1

    .line 1262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get imei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    .line 1266
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImeiSv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2247
    const-string v0, "get getImeiSv"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2248
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2259
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    .line 2261
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallPhoneType()I
    .locals 1

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3411
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 3103
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3667
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3663
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1223
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1226
    :cond_0
    const-string v1, "00000000000000"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1232
    const-string v1, "gsm.cdma.meid.workaround"

    const-string v2, "empty"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, strWorkaround:Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeid, strWorkaround="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1244
    .end local v0           #strWorkaround:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1238
    .restart local v0       #strWorkaround:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    goto :goto_0

    .line 1241
    .end local v0           #strWorkaround:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    goto :goto_0

    .line 1244
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorEnhanced()I
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3655
    const/4 v0, 0x0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMuteExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3748
    const/4 v0, 0x0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1091
    return-void
.end method

.method public getNeighboringCidsExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3739
    return-void
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1030
    return-void
.end method

.method public getOutgoingCallerIdDisplayExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3704
    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPRIVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPRIVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPRIVersions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdnSettings(ILandroid/os/Message;)V
    .locals 7
    .parameter "profileSlot"
    .parameter "response"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2368
    new-array v0, v5, [Ljava/lang/String;

    .line 2369
    .local v0, request:[Ljava/lang/String;
    if-ltz p1, :cond_0

    if-gt p1, v6, :cond_0

    .line 2370
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2371
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 2385
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 2386
    .local v1, requestArray:[Ljava/lang/Object;
    aput-object v0, v1, v3

    .line 2387
    aput-object p2, v1, v4

    .line 2388
    const/16 v2, 0x6a

    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2389
    return-void

    .line 2373
    .end local v1           #requestArray:[Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x5

    if-gt v2, p1, :cond_1

    const/16 v2, 0x8

    if-gt p1, v2, :cond_1

    .line 2374
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2375
    add-int/lit8 v2, p1, -0x5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 2377
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc8

    if-gt v2, p1, :cond_2

    const/16 v2, 0xcc

    if-gt p1, v2, :cond_2

    .line 2379
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2380
    add-int/lit16 v2, p1, -0xc8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 2383
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "profile"
    .parameter "response"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2462
    new-array v0, v3, [Ljava/lang/Object;

    .line 2463
    .local v0, requestArray:[Ljava/lang/Object;
    aput-object p1, v0, v2

    .line 2464
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2465
    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2466
    return-void
.end method

.method public getPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodesExt(I)Ljava/util/List;
    .locals 1
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3544
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneInstance(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3915
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3468
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoExt(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3840
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1064
    return-void
.end method

.method public getPreferredNetworkTypeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3730
    return-void
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPreferredOnly()I

    move-result v0

    return v0
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    .line 1543
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCallExt(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3623
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSM()Lcom/android/internal/telephony/SimSlotManager;
    .locals 1

    .prologue
    .line 3923
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateExt(I)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3440
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthExt(I)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3486
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSimTypes(Landroid/os/Message;)V

    .line 1076
    return-void
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1308
    return-void
.end method

.method public getSmscAddressExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3733
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateExt(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3464
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 3095
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3832
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getSubsidyLock(ILandroid/os/Message;)V

    .line 1623
    return-void
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3783
    const/4 v0, 0x0

    return v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVTSimulatedMode()Z

    move-result v0

    return v0
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceCallForwardingStatus()Z

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3682
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3674
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3678
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleInCallMmiCommandsExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "command"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3639
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 233
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 567
    const-string v18, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 572
    return-void

    .line 236
    :sswitch_0
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x61

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x49

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x54

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x55

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    .line 245
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Switching phone from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Phone to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, "GSM"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const-string v18, "CDMAPhone"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 247
    const/4 v14, 0x0

    .line 248
    .local v14, oldPowerState:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 250
    const/4 v14, 0x1

    .line 251
    const-string v18, "Setting Radio Power to Off"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 257
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 264
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "GSM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 272
    const/4 v15, 0x0

    .line 273
    .local v15, pendingMO_dialString:Ljava/lang/String;
    sget-object v16, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    .line 274
    .local v16, previousCallState:Lcom/android/internal/telephony/Phone$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 275
    .local v10, ct:Lcom/android/internal/telephony/CallTracker;
    if-eqz v10, :cond_7

    .line 276
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallTracker;->getCurrentPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 277
    .local v9, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_6

    .line 278
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v15

    .line 279
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_4

    .line 280
    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v15

    .line 282
    :cond_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_6

    .line 283
    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 286
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v16

    .line 288
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Make a new CDMAPhone and destroy the old GSMPhone:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 299
    .local v13, oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 300
    check-cast v13, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v13           #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    .line 301
    const/4 v13, 0x0

    .line 305
    .restart local v13       #oldPhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 306
    if-eqz v10, :cond_e

    .line 307
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/CallTracker;->setupInitState(Lcom/android/internal/telephony/Phone$State;)V

    .line 308
    if-eqz v15, :cond_8

    .line 309
    invoke-virtual {v10, v15}, Lcom/android/internal/telephony/CallTracker;->assignPendingMO(Ljava/lang/String;)V

    .line 384
    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 385
    new-instance v19, Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 391
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 394
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/HtcTelephony;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 400
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 401
    const-string v18, "Resetting Radio"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v14, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 406
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->setmIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 414
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v11, intent:Landroid/content/Intent;
    const/high16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    const-string v18, "phoneName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-gez v18, :cond_17

    .line 423
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v18

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->requestPhoneClassChangeDone(ZILandroid/os/Message;)Z

    goto/16 :goto_0

    .line 245
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v13           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v14           #oldPowerState:Z
    .end local v15           #pendingMO_dialString:Ljava/lang/String;
    .end local v16           #previousCallState:Lcom/android/internal/telephony/Phone$State;
    :cond_d
    const-string v18, "GSMPhone"

    goto/16 :goto_1

    .line 313
    .restart local v10       #ct:Lcom/android/internal/telephony/CallTracker;
    .restart local v13       #oldPhone:Lcom/android/internal/telephony/Phone;
    .restart local v14       #oldPowerState:Z
    .restart local v15       #pendingMO_dialString:Ljava/lang/String;
    .restart local v16       #previousCallState:Lcom/android/internal/telephony/Phone$State;
    :cond_e
    const-string v18, "Unable to transfer pending dialing call and state to CDMAPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 324
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v13           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v15           #pendingMO_dialString:Ljava/lang/String;
    .end local v16           #previousCallState:Lcom/android/internal/telephony/Phone$State;
    :cond_f
    const/4 v15, 0x0

    .line 325
    .restart local v15       #pendingMO_dialString:Ljava/lang/String;
    sget-object v16, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    .line 326
    .restart local v16       #previousCallState:Lcom/android/internal/telephony/Phone$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 327
    .restart local v10       #ct:Lcom/android/internal/telephony/CallTracker;
    if-eqz v10, :cond_14

    .line 328
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallTracker;->getCurrentPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 329
    .restart local v9       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_13

    .line 330
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v15

    .line 331
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_11

    .line 332
    :cond_10
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v15

    .line 334
    :cond_11
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_13

    .line 335
    :cond_12
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 338
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v16

    .line 340
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    :cond_14
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Make a new GSMPhone and destroy the old CDMAPhone:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 352
    .restart local v13       #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 353
    check-cast v13, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v13           #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    .line 354
    const/4 v13, 0x0

    .line 358
    .restart local v13       #oldPhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 359
    if-eqz v10, :cond_16

    .line 360
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/CallTracker;->setupInitState(Lcom/android/internal/telephony/Phone$State;)V

    .line 361
    if-eqz v15, :cond_15

    .line 362
    invoke-virtual {v10, v15}, Lcom/android/internal/telephony/CallTracker;->assignPendingMO(Ljava/lang/String;)V

    .line 379
    :cond_15
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->turnOnRadioDueToECC()V

    goto/16 :goto_2

    .line 366
    :cond_16
    const-string v18, "Unable to transfer pending dialing call and state to GSMPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 427
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_17
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_18

    sget-boolean v18, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v18, :cond_0

    .line 429
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->requestPhoneClassChangeDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 435
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v13           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v14           #oldPowerState:Z
    .end local v15           #pendingMO_dialString:Ljava/lang/String;
    .end local v16           #previousCallState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_1
    const-string v18, "PHONE"

    const-string v19, "Message EVENT_REQUESET_PHONE_CLASS_CHANGE_DONE "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 441
    :sswitch_2
    const-string v18, "PHONE"

    const-string v19, "Radio available"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageAvalibility()V

    .line 443
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_19

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_19

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_19

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 447
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 455
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 457
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 460
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v17, v18

    check-cast v17, [Ljava/lang/String;

    .line 461
    .local v17, respId:[Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    .line 462
    const/16 v18, 0x3

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    .line 463
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mEsn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mMeid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 466
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x94

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 467
    const-string v18, "ro.cdma.meid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v17           #respId:[Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 476
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1a

    .line 477
    const-string v18, "PHONE"

    const-string v19, "Get IMEI fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 480
    :cond_1a
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    .line 481
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mImei "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 483
    const-string v18, "ro.gsm.imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 490
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 491
    const-string v18, "PHONE"

    const-string v19, "Get EVENT_GET_IMEISV_DONE fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 494
    :cond_1b
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    .line 495
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mImeiSv "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    const-string v18, "PHONE"

    const-string v19, "Message EVENT_ENTER_LPM"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v12, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.enter_lpm"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v12, intent_lpm:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 510
    .end local v12           #intent_lpm:Landroid/content/Intent;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 511
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1d

    .line 512
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v8, v18

    check-cast v8, [Ljava/lang/String;

    .line 513
    .local v8, cdmaSubscription:[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v0, v8

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 514
    const/16 v18, 0x0

    aget-object v5, v8, v18

    .line 515
    .local v5, Mdn:Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v6, v8, v18

    .line 517
    .local v6, Min:Ljava/lang/String;
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x94

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c

    .line 518
    const-string v18, "ril.cdmaphoneapp.mdn"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v18, "ril.cdmaphoneapp.min"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_1c
    const-string v18, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CDMA mdn "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "min "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 525
    .end local v5           #Mdn:Ljava/lang/String;
    .end local v6           #Min:Ljava/lang/String;
    .end local v8           #cdmaSubscription:[Ljava/lang/String;
    :cond_1d
    const-string v18, "PHONE"

    const-string v19, "Error for poll state "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 531
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 534
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 537
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 540
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 543
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x64 -> :sswitch_1
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_2
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 3635
    const/4 v0, 0x0

    return v0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcCdmaExitRadioPowerSaveMode()V

    .line 2093
    return-void
.end method

.method public htcGetCdmaEriCallGuard()I
    .locals 1

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v0

    return v0
.end method

.method public htcGetCdmaEriDistinctiveRinger()I
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriDistinctiveRinger()I

    move-result v0

    return v0
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v0

    return v0
.end method

.method public htcNotifyDataConnectionDisconnect(Z)Z
    .locals 1
    .parameter "dis"

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->htcNotifyDataConnectionDisconnect(Z)Z

    move-result v0

    return v0
.end method

.method public initSpecificDialNumbers()V
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->initSpecificDialNumbers()V

    .line 1619
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1111
    return-void
.end method

.method public invokeOemRilRequestRawExt([BLandroid/os/Message;I)V
    .locals 0
    .parameter "data"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3752
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1115
    return-void
.end method

.method public invokeOemRilRequestStringsExt([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "strings"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3755
    return-void
.end method

.method public isActEnabled()Z
    .locals 1

    .prologue
    .line 3345
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isActEnabled()Z

    move-result v0

    return v0
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 3812
    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrentVoiceAndDataExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3816
    const/4 v0, 0x0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3800
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3820
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultTypeStillActive()Z
    .locals 1

    .prologue
    .line 3140
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDefaultTypeStillActive()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3460
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isNetworkSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isNetworkSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialStr"

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyATDMmiComplete(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 3954
    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 1304
    return-void
.end method

.method public notifyDataActivityExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3867
    return-void
.end method

.method public notifyUnblockPin2Done()V
    .locals 0

    .prologue
    .line 3952
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1147
    return-void
.end method

.method public queryAvailableBandModeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3790
    return-void
.end method

.method public queryAvoidNetwork(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvoidNetwork(Landroid/os/Message;)V

    .line 4143
    return-void
.end method

.method public queryCAVE(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    .line 3213
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1165
    return-void
.end method

.method public queryMD5(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3233
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    .line 3234
    return-void
.end method

.method public querySSDUpdate(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3218
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->querySSDUpdate(Landroid/os/Message;)V

    .line 3219
    return-void
.end method

.method public querySubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->querySubsidyLock(ILandroid/os/Message;)V

    .line 1632
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1288
    return-void
.end method

.method public queryTTYModeExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3855
    return-void
.end method

.method public queryUIMAUTH(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3236
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    .line 3237
    return-void
.end method

.method public queryVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryVPM(Landroid/os/Message;)V

    .line 3228
    return-void
.end method

.method public reEnableDataRoamingGuardDialog()V
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->reEnableDataRoamingGuardDialog()V

    .line 2109
    return-void
.end method

.method public registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3945
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1421
    return-void
.end method

.method public registerFoT53ClirlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3900
    return-void
.end method

.method public registerForATDMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1576
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1373
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 761
    return-void
.end method

.method public registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3114
    return-void
.end method

.method public registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2113
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 689
    return-void
.end method

.method public registerForDisconnectExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3526
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1389
    return-void
.end method

.method public registerForDisplayInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3876
    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2061
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 777
    return-void
.end method

.method public registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2219
    return-void
.end method

.method public registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3159
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 753
    return-void
.end method

.method public registerForInCallVoicePrivacyOffExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3575
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 745
    return-void
.end method

.method public registerForInCallVoicePrivacyOnExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3569
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 681
    return-void
.end method

.method public registerForIncomingRingExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3508
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1413
    return-void
.end method

.method public registerForLineControlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3894
    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1906
    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1869
    return-void
.end method

.method public registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1552
    return-void
.end method

.method public registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3281
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 705
    return-void
.end method

.method public registerForMmiCompleteExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3538
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 697
    return-void
.end method

.method public registerForMmiInitiateExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3532
    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1989
    return-void
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1860
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2069
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 673
    return-void
.end method

.method public registerForNewRingingConnectionExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3502
    return-void
.end method

.method public registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2335
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1397
    return-void
.end method

.method public registerForNumberInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3882
    return-void
.end method

.method public registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2209
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 665
    return-void
.end method

.method public registerForPreciseCallStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3496
    return-void
.end method

.method public registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3307
    return-void
.end method

.method public registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1560
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2140
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1405
    return-void
.end method

.method public registerForRedirectedNumberInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3888
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 793
    return-void
.end method

.method public registerForResendIncallMuteExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3520
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 785
    return-void
.end method

.method public registerForRingbackToneExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3514
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 721
    return-void
.end method

.method public registerForServiceStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3551
    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1888
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1381
    return-void
.end method

.method public registerForSignalInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3870
    return-void
.end method

.method public registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1745
    const/4 v0, 0x0

    .line 1746
    .local v0, hasGsmPhone:Z
    const/4 v1, 0x1

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    .line 1749
    if-eqz v0, :cond_0

    .line 1780
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1784
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 769
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 737
    return-void
.end method

.method public registerForSuppServiceFailedExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3563
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 729
    return-void
.end method

.method public registerForSuppServiceNotificationExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3557
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1429
    return-void
.end method

.method public registerForT53AudioControlInfoExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3906
    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1930
    return-void
.end method

.method public registerForUnblockPin2Done(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1582
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 657
    return-void
.end method

.method public registerForUnknownConnectionExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3490
    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1568
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2326
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2318
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 829
    return-void
.end method

.method public rejectCallExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3592
    return-void
.end method

.method public requesetSetPhoneType(ILandroid/os/Message;)V
    .locals 4
    .parameter "phonetype"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 2173
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    .line 2174
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 2175
    .local v0, outgoingPhoneType:I
    if-nez p1, :cond_1

    .line 2176
    const-string v1, "Please speicify the phone type"

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2204
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 2182
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->requestPhoneClassChangeDone(ZILandroid/os/Message;)Z

    .line 2183
    if-eqz p2, :cond_0

    .line 2184
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2189
    :cond_2
    if-eq v0, p1, :cond_4

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch phone type ougoing phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_3

    const-string v1, "GSM"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2196
    iget v1, p2, Landroid/os/Message;->arg1:I

    iget v2, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->handleMessage(Landroid/os/Message;)V

    .line 2198
    if-eqz p2, :cond_0

    .line 2199
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2190
    :cond_3
    const-string v1, "CDMA"

    goto :goto_1

    .line 2202
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to change mode outgoing phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " switch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randu"
    .parameter "response"

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    .line 3210
    return-void
.end method

.method public requestCW_UW_DREG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_DREG(Landroid/os/Message;)V

    .line 3204
    return-void
.end method

.method public requestCW_UW_REG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_REG(Landroid/os/Message;)V

    .line 3200
    return-void
.end method

.method public requestClearAvoidNetwork(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 4146
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestClearAvoidNetwork(Landroid/os/Message;)V

    .line 4147
    return-void
.end method

.method public requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestEhrpdDomainNameChangeState(Landroid/os/Message;)V

    .line 3127
    return-void
.end method

.method public requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    .line 3135
    return-void
.end method

.method public requestGetEhrpdDisableCapability(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    .line 3131
    return-void
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3325
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetNBPCD(Landroid/os/Message;)V

    .line 1978
    return-void
.end method

.method public requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "ifc_name"
    .parameter "response"

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    .line 3301
    return-void
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1693
    const/4 v0, 0x0

    .line 1694
    .local v0, hasGsmPhone:Z
    const/4 v1, 0x1

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    .line 1697
    if-eqz v0, :cond_0

    .line 1736
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->requestGetSmartDataRoamingStatus(Landroid/os/Message;)V

    .line 1740
    :cond_0
    return-void
.end method

.method public requestGetVolteSipRegFailure(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    .line 3297
    return-void
.end method

.method public requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "response"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 1346
    return-void
.end method

.method public requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "modemId"
    .parameter "response"

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3355
    return-void
.end method

.method public requestHtcGetDDTMMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestHtcGetDDTMMode(Landroid/os/Message;)V

    .line 1955
    return-void
.end method

.method public requestHtcGetGPSOneMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestHtcGetGPSOneMode(Landroid/os/Message;)V

    .line 1475
    return-void
.end method

.method public requestHtcSetDDTMMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "selectDDTM"
    .parameter "response"

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcSetDDTMMode(ILandroid/os/Message;)V

    .line 1964
    return-void
.end method

.method public requestHtcSetGPSOneMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "gpsOneMode"
    .parameter "response"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcSetGPSOneMode(ILandroid/os/Message;)V

    .line 1481
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1453
    return-void
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"
    .parameter "result"

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3231
    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestOTAProvisionStatus(Landroid/os/Message;)V

    .line 2083
    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    .line 1853
    return-void
.end method

.method public requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randssd"
    .parameter "response"

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    .line 3216
    return-void
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "authbs"
    .parameter "response"

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    .line 3222
    return-void
.end method

.method public requestSelectNextNetwork(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 4138
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSelectNextNetwork(Landroid/os/Message;)V

    .line 4139
    return-void
.end method

.method public requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
    .locals 1
    .parameter "ehrpdmode"
    .parameter "response"

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    .line 3123
    return-void
.end method

.method public requestSetLBSNTFY(I)V
    .locals 1
    .parameter "lbsvalue"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSetLBSNTFY(I)V

    .line 1086
    return-void
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "time"
    .parameter "response"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 1353
    return-void
.end method

.method public requestSetSmartDataRoaming(ILandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1641
    const/4 v0, 0x0

    .line 1642
    .local v0, hasGsmPhone:Z
    const/4 v1, 0x1

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    .line 1645
    if-eqz v0, :cond_0

    .line 1684
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSetSmartDataRoaming(ILandroid/os/Message;)V

    .line 1688
    :cond_0
    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 1
    .parameter "domestic"
    .parameter "international"
    .parameter "response"

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestSetVoiceRoamingMode(IILandroid/os/Message;)V

    .line 3191
    return-void
.end method

.method public requestVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    .line 3225
    return-void
.end method

.method public requesthTcGetHybridMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requesthTcGetHybridMode(Landroid/os/Message;)V

    .line 2045
    return-void
.end method

.method public requesthTcGetSystemNAM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requesthTcGetSystemNAM(Landroid/os/Message;)V

    .line 2020
    return-void
.end method

.method public requesthTcSetHybridMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "hybridMode"
    .parameter "response"

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requesthTcSetHybridMode(ILandroid/os/Message;)V

    .line 2054
    return-void
.end method

.method public requesthTcSetSystemNAM(ILandroid/os/Message;)V
    .locals 1
    .parameter "numAssignModule"
    .parameter "response"

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requesthTcSetSystemNAM(ILandroid/os/Message;)V

    .line 2029
    return-void
.end method

.method public resetPdnForSettingsChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3052
    sget-boolean v2, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v2, :cond_1

    .line 3053
    const-string v2, " changePdnSettings"

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 3054
    const/4 v0, 0x0

    .line 3055
    .local v0, mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3056
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    .line 3061
    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    :goto_0
    if-eqz v0, :cond_1

    .line 3062
    const/4 v1, 0x0

    .line 3064
    .local v1, phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->resetRadioForDisconnectingPdn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3065
    const-string v2, " Need reset the Radio due to LTE VZWIMS has been modified"

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 3066
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    .line 3067
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v2, :cond_3

    .line 3068
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 3075
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 3076
    const-string v2, "getNewMPDNTable"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V

    .line 3087
    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    .end local v1           #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_1
    :goto_2
    return-void

    .line 3059
    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    goto :goto_0

    .line 3070
    .restart local v1       #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_0

    .line 3071
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    goto :goto_1

    .line 3079
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 3082
    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->lockUntilRadioPower(ZLcom/android/internal/telephony/DataConnectionTracker;)Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 1636
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1056
    return-void
.end method

.method public selectNetworkManuallyExt(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 0
    .parameter "network"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3724
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1357
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 893
    return-void
.end method

.method public sendDtmfExt(CI)V
    .locals 0
    .parameter "c"
    .parameter "phoneType"

    .prologue
    .line 3643
    return-void
.end method

.method public sendTamCmd([ILandroid/os/Message;)V
    .locals 1
    .parameter "config"
    .parameter "response"

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->sendTamCmd([ILandroid/os/Message;)V

    .line 3430
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "ussdMessge"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public sendUssdResponseExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "ussdMessge"
    .parameter "phoneType"

    .prologue
    .line 3548
    return-void
.end method

.method public setActivePhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3931
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1143
    return-void
.end method

.method public setBandModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3787
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 1
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCBMsgIdEFcbmi([BLandroid/os/Message;)V

    .line 1591
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 1
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBFacility"
    .parameter "lockState"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V

    .line 1596
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1017
    return-void
.end method

.method public setCallForwardingOptionExt(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3701
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1044
    return-void
.end method

.method public setCallWaitingExt(ZLandroid/os/Message;I)V
    .locals 0
    .parameter "enable"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3714
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1169
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1173
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1300
    return-void
.end method

.method public setCellBroadcastSmsConfigExt([ILandroid/os/Message;I)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3864
    return-void
.end method

.method public setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1025
    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDataNationalRoamingMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    .line 1160
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1155
    return-void
.end method

.method public setDataRoamingEnabledExt(ZI)V
    .locals 0
    .parameter "enable"
    .parameter "phoneType"

    .prologue
    .line 3797
    return-void
.end method

.method public setDataRoamingGuardResponse(ZZ)V
    .locals 1
    .parameter "accept"
    .parameter "remember"

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setDataRoamingGuardResponse(ZZ)V

    .line 2105
    return-void
.end method

.method public setDataRoamingGuardSetting(I)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingGuardSetting(I)V

    .line 2101
    return-void
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 3966
    return-void
.end method

.method public setDataSubscriptionExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3968
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1107
    return-void
.end method

.method public setEmergencyRadioOn()V
    .locals 0

    .prologue
    .line 3376
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 3375
    return-void
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "roamingOption"

    .prologue
    .line 3267
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlobalDataRoamingOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    .line 3269
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 978
    return-void
.end method

.method public setLine1NumberExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3671
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1099
    return-void
.end method

.method public setMuteExt(ZI)V
    .locals 0
    .parameter "muted"
    .parameter "phoneType"

    .prologue
    .line 3745
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1052
    return-void
.end method

.method public setNetworkSelectionModeAutomaticExt(Landroid/os/Message;I)V
    .locals 0
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3720
    return-void
.end method

.method public setNetworkSelectionRejectStatus(Z)V
    .locals 1
    .parameter "reject"

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionRejectStatus(Z)V

    .line 3366
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1437
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1095
    return-void
.end method

.method public setOnPostDialCharacterExt(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "phoneType"

    .prologue
    .line 3742
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1036
    return-void
.end method

.method public setOutgoingCallerIdDisplayExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3708
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "profileSlot"
    .parameter "settings"
    .parameter "response"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2393
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    .line 2394
    .local v2, request:[Ljava/lang/String;
    if-ltz p1, :cond_1

    if-gt p1, v10, :cond_1

    .line 2395
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2396
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 2410
    :goto_0
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 2411
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2412
    .local v0, apnSettings:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 2414
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 2417
    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v0, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2422
    :goto_2
    const/4 v4, 0x4

    :try_start_2
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v2, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2427
    :goto_3
    const/4 v4, 0x5

    const/4 v5, 0x3

    :try_start_3
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2430
    :goto_4
    const/4 v4, 0x6

    const/4 v5, 0x4

    :try_start_4
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2435
    .end local v0           #apnSettings:[Ljava/lang/String;
    :cond_0
    :goto_5
    new-array v3, v11, [Ljava/lang/Object;

    .line 2436
    .local v3, requestArray:[Ljava/lang/Object;
    aput-object v2, v3, v7

    .line 2437
    aput-object p3, v3, v8

    .line 2438
    const/16 v4, 0x6d

    invoke-virtual {p0, v4, v8, v7, v3}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2439
    return-void

    .line 2398
    .end local v3           #requestArray:[Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x5

    if-gt v4, p1, :cond_2

    const/16 v4, 0x9

    if-gt p1, v4, :cond_2

    .line 2399
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2400
    add-int/lit8 v4, p1, -0x5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto :goto_0

    .line 2402
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc8

    if-gt v4, p1, :cond_3

    const/16 v4, 0xcc

    if-gt p1, v4, :cond_3

    .line 2404
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2405
    add-int/lit16 v4, p1, -0xc8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto/16 :goto_0

    .line 2408
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    goto/16 :goto_0

    .line 2418
    .restart local v0       #apnSettings:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2419
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    goto :goto_2

    .line 2423
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2424
    .restart local v1       #ex:Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v2, v10

    goto :goto_3

    .line 2431
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_5

    .line 2428
    :catch_3
    move-exception v4

    goto :goto_4

    .line 2415
    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "profile"
    .parameter "response"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2854
    new-array v0, v3, [Ljava/lang/Object;

    .line 2855
    .local v0, requestArray:[Ljava/lang/Object;
    aput-object p1, v0, v2

    .line 2856
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2857
    const/16 v1, 0x6d

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2858
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3397
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1060
    return-void
.end method

.method public setPreferredNetworkTypeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "networkType"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3727
    return-void
.end method

.method public setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
    .locals 1
    .parameter "isEnabled"
    .parameter "response"

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V

    .line 3311
    return-void
.end method

.method public setRX_Diversity(IILandroid/os/Message;)V
    .locals 1
    .parameter "rxInterface"
    .parameter "enabledFlag"
    .parameter "response"

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setRX_Diversity(IILandroid/os/Message;)V

    .line 3316
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 905
    return-void
.end method

.method public setRadioPowerExt(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPowerExt(Z)V

    .line 911
    return-void
.end method

.method public setRadioPowerExt(ZI)V
    .locals 0
    .parameter "power"
    .parameter "phoneType"

    .prologue
    .line 3652
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1312
    return-void
.end method

.method public setSmscAddressExt(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "address"
    .parameter "result"
    .parameter "phoneType"

    .prologue
    .line 3736
    return-void
.end method

.method public setSubscriptionMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "response"

    .prologue
    .line 3970
    return-void
.end method

.method public setSubscriptionModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3972
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1628
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1284
    return-void
.end method

.method public setTTYModeExt(ILandroid/os/Message;I)V
    .locals 0
    .parameter "ttyMode"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3852
    return-void
.end method

.method public setTempCLIR(I)V
    .locals 1
    .parameter "tempCLIR"

    .prologue
    .line 3370
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setTempCLIR(I)V

    .line 3371
    return-void
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 1
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    .line 1600
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccCardProxy;->setTestIcc(Ljava/lang/String;Z)V

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTestIcc(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 3172
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 3181
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "response"

    .prologue
    .line 3974
    return-void
.end method

.method public setUiccSubscriptionExt(IIIILandroid/os/Message;I)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "response"
    .parameter "phoneType"

    .prologue
    .line 3976
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .parameter "f"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1135
    return-void
.end method

.method public setUnitTestModeExt(ZI)V
    .locals 0
    .parameter "f"
    .parameter "phoneType"

    .prologue
    .line 3780
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setVTSimulatedMode(Z)V

    .line 1842
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 996
    return-void
.end method

.method public setVoiceMailNumberExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"
    .parameter "phoneType"

    .prologue
    .line 3689
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 1466
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 897
    return-void
.end method

.method public startDtmfExt(CI)V
    .locals 0
    .parameter "c"
    .parameter "phoneType"

    .prologue
    .line 3646
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 901
    return-void
.end method

.method public stopDtmfExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3649
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 833
    return-void
.end method

.method public switchHoldingAndActiveExt(I)V
    .locals 0
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3595
    return-void
.end method

.method public turnOnRadioDueToECC()V
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->turnOnRadioDueToECC()V

    .line 1487
    return-void
.end method

.method public uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->uiccAkaAuthenticate([B[BLandroid/os/Message;)V

    .line 2304
    return-void
.end method

.method public unregisterEcallAutoRetry(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 3948
    return-void
.end method

.method public unregisterForATDMmiComplete(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1579
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1377
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 765
    return-void
.end method

.method public unregisterForCollidedDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCollidedDisconnect(Landroid/os/Handler;)V

    .line 3118
    return-void
.end method

.method public unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V

    .line 2117
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 693
    return-void
.end method

.method public unregisterForDisconnectExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3529
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1393
    return-void
.end method

.method public unregisterForDisplayInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3879
    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForERIInfo(Landroid/os/Handler;)V

    .line 2065
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 781
    return-void
.end method

.method public unregisterForFailEntitlementCheck(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForFailEntitlementCheck(Landroid/os/Handler;)V

    .line 2222
    return-void
.end method

.method public unregisterForHTCECCStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForHTCECCStatus(Landroid/os/Handler;)V

    .line 3163
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 757
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3578
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 749
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3572
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 685
    return-void
.end method

.method public unregisterForIncomingRingExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3511
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1417
    return-void
.end method

.method public unregisterForLineControlInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3897
    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLoopBackMode(Landroid/os/Handler;)V

    .line 1914
    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    .line 1877
    return-void
.end method

.method public unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V

    .line 1556
    return-void
.end method

.method public unregisterForManualState(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForManualState(Landroid/os/Handler;)V

    .line 3285
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 709
    return-void
.end method

.method public unregisterForMmiCompleteExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3541
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 701
    return-void
.end method

.method public unregisterForMmiInitiateExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3535
    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNBPCDInfo(Landroid/os/Handler;)V

    .line 1997
    return-void
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkBusy(Landroid/os/Handler;)V

    .line 1864
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 2073
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 677
    return-void
.end method

.method public unregisterForNewRingingConnectionExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3505
    return-void
.end method

.method public unregisterForNoDunDataPlan(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNoDunDataPlan(Landroid/os/Handler;)V

    .line 2339
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1401
    return-void
.end method

.method public unregisterForNumberInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3885
    return-void
.end method

.method public unregisterForPhoneModeChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPhoneModeChanged(Landroid/os/Handler;)V

    .line 2213
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 669
    return-void
.end method

.method public unregisterForPreciseCallStateChangedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3499
    return-void
.end method

.method public unregisterForRSSI_Report(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRSSI_Report(Landroid/os/Handler;)V

    .line 3320
    return-void
.end method

.method public unregisterForRadioOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOn(Landroid/os/Handler;)V

    .line 1564
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1409
    return-void
.end method

.method public unregisterForRedirectedNumberInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3891
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 797
    return-void
.end method

.method public unregisterForResendIncallMuteExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3523
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 789
    return-void
.end method

.method public unregisterForRingbackToneExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3517
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 725
    return-void
.end method

.method public unregisterForServiceStateChangedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3554
    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalFade(Landroid/os/Handler;)V

    .line 1896
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1385
    return-void
.end method

.method public unregisterForSignalInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3873
    return-void
.end method

.method public unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 1788
    const/4 v0, 0x0

    .line 1789
    .local v0, hasGsmPhone:Z
    const/4 v1, 0x1

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    .line 1792
    if-eqz v0, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V

    .line 1821
    :cond_0
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 773
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 741
    return-void
.end method

.method public unregisterForSuppServiceFailedExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3566
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 733
    return-void
.end method

.method public unregisterForSuppServiceNotificationExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3560
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1433
    return-void
.end method

.method public unregisterForT53AudioControlInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3909
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1425
    return-void
.end method

.method public unregisterForT53ClirInfoExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3903
    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForToneSignalInfo(Landroid/os/Handler;)V

    .line 1938
    return-void
.end method

.method public unregisterForUnblockPin2Done(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1585
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 661
    return-void
.end method

.method public unregisterForUnknownConnectionExt(Landroid/os/Handler;I)V
    .locals 0
    .parameter "h"
    .parameter "phoneType"

    .prologue
    .line 3493
    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallConnected(Landroid/os/Handler;)V

    .line 1573
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 2330
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 2322
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1441
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1123
    return-void
.end method

.method public updateServiceLocationExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3771
    return-void
.end method

.method public wifi2GRetry()V
    .locals 2

    .prologue
    .line 4125
    const-string v0, "PHONE"

    const-string v1, "Proxy: wifi2GRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    .line 4127
    return-void
.end method

.method public wifi2GRetryExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3964
    return-void
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    return-object v0
.end method
