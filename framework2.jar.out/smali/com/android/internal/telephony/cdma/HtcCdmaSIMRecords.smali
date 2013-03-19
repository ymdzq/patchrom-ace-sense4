.class public final Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "HtcCdmaSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final DBG:Z = true

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x6a

.field private static final EVENT_CB_ON_SIM:I = 0x21

.field private static final EVENT_DELAY_CFU_QUERY:I = 0x6c

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CB_CHANNEL_DONE:I = 0x23

.field private static final EVENT_GET_CB_DONE:I = 0x22

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_DONE:I = 0x25

.field private static final EVENT_GET_EFLP_DONE:I = 0x68

.field private static final EVENT_GET_FPLMN_DONE:I = 0x6b

.field private static final EVENT_GET_GSM_IMSI_DONE:I = 0x6f

.field private static final EVENT_GET_HTC_SIM_TYPES:I = 0x27

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SIM_TYPES_DONE:I = 0x65

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_SUBSIDY_LOCK_DONE:I = 0x66

.field private static final EVENT_GET_UIMID_DONE:I = 0x26

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_HTC_EXTENDED_OFFSET:I = 0x64

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PBK_READY:I = 0x6d

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CB_CHANNEL_DONE:I = 0x24

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_EFLP_DONE:I = 0x69

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SET_SUBSIDY_LOCK_DONE:I = 0x67

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final EVENT_UPDATE_MCC_THREAD:I = 0x6e

.field static final LOG_TAG:Ljava/lang/String; = "HtcCdmaSIMRecords"

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field callForwardingEnabled:Z

.field cfuQueried:Z

.field disableCfuIcon:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field private gsmImsi:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field private mCphsInfo:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfCsp:[B

.field mFPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkSelectionEnabled:Z

.field mPendingIccLoaded:Z

.field private mSimSmsRecordIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 118
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 119
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    .line 120
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    .line 123
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    .line 124
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    .line 128
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 133
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 135
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 2767
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 244
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 246
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    .line 247
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    .line 249
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 252
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 255
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 261
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6d

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerPBReadyNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.types"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    .line 267
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMRecords create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method private appendFileId(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 2513
    move v1, p1

    .line 2515
    .local v1, newEfid:I
    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_0

    .line 2516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2517
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2523
    .local v0, fileid:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2525
    .end local v0           #fileid:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return v1
.end method

.method private dropSimPbkEntries()V
    .locals 6

    .prologue
    .line 2740
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 2742
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_1

    .line 2743
    const-string v3, "dropSimPbkEntries"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2744
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2747
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntriesExt(I)V

    .line 2750
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_REFRESH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2751
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "phone_type"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2753
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2765
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    return-void

    .line 2755
    .restart local v2       #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V

    .line 2756
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SIM_REFRESH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2759
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2761
    :catch_1
    move-exception v0

    .line 2762
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchMWIfromUE()V
    .locals 3

    .prologue
    .line 2140
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2142
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "mwi_status_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 2145
    return-void
.end method

.method private fetchSimRecords()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2316
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 2319
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 2320
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 2322
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcCdmaSIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2325
    const-string v1, "SimRecords"

    const-string v2, "mSimulator = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    .line 2330
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2331
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2333
    const/16 v1, 0x6f07

    const/16 v2, 0x6f

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2334
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2337
    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2338
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2341
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2343
    :cond_1
    const/16 v1, 0x6f31

    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2344
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2350
    :cond_2
    const/16 v1, 0x6f7b

    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2351
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2371
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 2372
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2373
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2375
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2376
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2378
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2379
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2382
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2383
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2390
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2393
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2397
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2398
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2399
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2400
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2403
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 2405
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2406
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2408
    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2409
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2411
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2412
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2414
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2415
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2418
    const/16 v1, 0x6f15

    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2419
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2430
    const/16 v1, 0x6f45

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2431
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2454
    return-void
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2705
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2706
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 5
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 2553
    if-eqz p1, :cond_0

    .line 2554
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2557
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcCdmaSIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2626
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2628
    :goto_0
    return-void

    .line 2559
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2561
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f46

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2563
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2565
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2568
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 2569
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2570
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    .line 2571
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2578
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2580
    .end local v0           #data:[B
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2582
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2584
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2588
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    goto :goto_0

    .line 2592
    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 2593
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2594
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2601
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2603
    .end local v0           #data:[B
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f18

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2605
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2607
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2611
    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 2612
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2613
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2623
    .end local v0           #data:[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2620
    :cond_3
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCB([B)V
    .locals 9
    .parameter "ba"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2039
    aget-byte v4, p1, v7

    if-eqz v4, :cond_0

    .line 2040
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :cond_0
    aget-byte v4, p1, v7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 2045
    array-length v1, p1

    .line 2049
    .local v1, n:I
    add-int/lit8 v4, v1, -0x1

    new-array v2, v4, [B

    .line 2050
    .local v2, nba:[B
    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v8, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2052
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 2054
    .local v3, pdu:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;

    move-result-object v0

    .line 2057
    .local v0, message:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    .end local v0           #message:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    .end local v1           #n:I
    .end local v2           #nba:[B
    .end local v3           #pdu:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    .line 1915
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update file efid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    sparse-switch p1, :sswitch_data_0

    .line 1943
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1944
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 1947
    :goto_0
    return-void

    .line 1918
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1919
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1923
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1924
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1930
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    .line 1931
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 1935
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 1936
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1916
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_3
        0x6f40 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimChanged()V
    .locals 6

    .prologue
    .line 2104
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2106
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "sim_imsi_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2107
    .local v0, lastIMSI:Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2109
    .local v2, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "sim_imsi_key"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2110
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2112
    const-string v3, "mwi_status_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2114
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "SIM change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2117
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "ruim.sim.change"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2135
    return-void

    .line 2119
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.change"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2124
    :cond_2
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "SIM not change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2127
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "ruim.sim.change"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2129
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.change"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimRefresh([I)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1950
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1951
    :cond_0
    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1989
    :goto_0
    return-void

    .line 1955
    :cond_1
    aget v1, p1, v3

    sparse-switch v1, :sswitch_data_0

    .line 1986
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1957
    :sswitch_0
    const-string v1, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1959
    const/4 v1, 0x1

    aget v0, p1, v1

    .line 1960
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 1966
    .end local v0           #efid:I
    :sswitch_1
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1968
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1969
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 1970
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 1973
    :sswitch_2
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1974
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1982
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1955
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSms(I[B)V
    .locals 7
    .parameter "nRecordIndex"
    .parameter "ba"

    .prologue
    const/4 v6, 0x0

    .line 1992
    aget-byte v3, p2, v6

    if-eqz v3, :cond_0

    .line 1993
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_0
    aget-byte v3, p2, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1998
    array-length v1, p2

    .line 2002
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2003
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p2, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2004
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 2008
    .local v0, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->setIndexOnIcc(I)V

    .line 2011
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2013
    .end local v0           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2067
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2069
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2070
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 2072
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 2073
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2079
    array-length v4, v0

    .line 2083
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2084
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2085
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v3

    .line 2087
    .local v3, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2092
    aput-byte v10, v0, v9

    .line 2069
    .end local v3           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2100
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private htcOnAllRecordsLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2259
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2261
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v1, "LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2689
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 2690
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isFfBeTreatedAsUnknownCount()Z
    .locals 2

    .prologue
    .line 2695
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2494
    if-nez p1, :cond_1

    .line 2507
    :cond_0
    :goto_0
    return v2

    .line 2496
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 2497
    goto :goto_0

    .line 2500
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2501
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2502
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2503
    goto :goto_0
.end method

.method private onSimReady()V
    .locals 3

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 2306
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 2309
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 2311
    return-void
.end method

.method private parseEfFplmn([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 2670
    if-eqz p1, :cond_0

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 2671
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 2673
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2674
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2676
    .local v1, plmn:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_FPLMN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2679
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 2682
    .end local v0           #i:I
    .end local v1           #plmn:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 2637
    new-instance v3, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-direct {v3, p1, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;-><init>([BII)V

    .line 2639
    .local v3, tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    const/4 v2, 0x0

    .line 2642
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2643
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 2644
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v2

    .line 2649
    :cond_0
    if-nez v2, :cond_3

    .line 2665
    :cond_1
    return-void

    .line 2642
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->nextObject()Z

    goto :goto_0

    .line 2653
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 2655
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v4, v0, 0x2

    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 2657
    const/4 v4, 0x3

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2660
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 2661
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_SPDI network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2662
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setLocaleFromMccIfNeeded(I)V
    .locals 4
    .parameter "mcc"

    .prologue
    .line 792
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, country:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 797
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2271
    :cond_0
    return-void
.end method

.method private setTimezoneFromMccIfNeeded(I)V
    .locals 5
    .parameter "mcc"

    .prologue
    .line 774
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 776
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 780
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 782
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 785
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 2
    .parameter "spn"

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2286
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "voiceMailNum is empty!! try to search default value from xml!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isVoiceMailFixed:Z

    .line 2289
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2294
    :cond_0
    return-void
.end method

.method private updateMWItoUE()V
    .locals 4

    .prologue
    .line 2148
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2150
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2151
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mwi_status_key"

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2152
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2153
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccRefresh(Landroid/os/Handler;)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterPBReadyNotify(Landroid/os/Handler;)V

    .line 279
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 280
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    .line 281
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    .line 282
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 2470
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 2473
    :cond_0
    const/4 v0, 0x2

    .line 2487
    .local v0, rule:I
    :cond_1
    :goto_0
    return v0

    .line 2474
    .end local v0           #rule:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2475
    const/4 v0, 0x1

    .line 2476
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2478
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2481
    .end local v0           #rule:I
    :cond_3
    const/4 v0, 0x2

    .line 2482
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 2484
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method protected getIccOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2784
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-nez v1, :cond_1

    .line 750
    :cond_0
    const/4 v1, 0x0

    .line 766
    :goto_0
    return-object v1

    .line 753
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v1, :cond_2

    .line 756
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 766
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 2
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 2721
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2722
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    .line 2724
    return-void
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 564
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 566
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 567
    const-string v3, "getVoiceCallForwardingFlag return false due to airplanemode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 568
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 571
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 564
    goto :goto_0

    .line 571
    .restart local v0       #enabled:Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    goto :goto_1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, aplhaTag:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x71

    if-ne v1, v2, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 477
    .end local v0           #aplhaTag:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 51
    .parameter "msg"

    .prologue
    .line 803
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v3, :cond_1

    .line 804
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " HtcCdmaSIMRecords drop event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    const/16 v27, 0x0

    .line 815
    .local v27, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v3, :sswitch_data_0

    .line 1908
    :cond_2
    :goto_1
    if-eqz v27, :cond_0

    .line 1909
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 817
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onSimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1903
    :catch_0
    move-exception v21

    .line 1905
    .local v21, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "Exception parsing SIM record"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1908
    if-eqz v27, :cond_0

    goto :goto_2

    .line 821
    .end local v21           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1908
    :catchall_0
    move-exception v3

    if-eqz v27, :cond_3

    .line 1909
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRecordLoaded()V

    .line 1908
    :cond_3
    throw v3

    .line 828
    :sswitch_2
    const/16 v27, 0x1

    .line 830
    :try_start_4
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 832
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 836
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    if-eqz v3, :cond_4

    .line 839
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/16 v22, 0x0

    .local v22, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    array-length v3, v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_4

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    aget-byte v3, v3, v22

    and-int/lit16 v0, v3, 0xff

    move/from16 v39, v0

    .line 843
    .local v39, serviceGroupCode:I
    const/16 v3, 0xc0

    move/from16 v0, v39

    if-ne v0, v3, :cond_7

    .line 844
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: mEfCsp[i+1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    add-int/lit8 v7, v22, 0x1

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    add-int/lit8 v5, v22, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_6

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    .line 870
    .end local v22           #i:I
    .end local v39           #serviceGroupCode:I
    :cond_4
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: mNetworkSelectionEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v35

    .line 876
    .local v35, networkSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    if-nez v3, :cond_2

    .line 877
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v41

    .line 879
    .local v41, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 880
    .local v20, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "network_selection_key"

    const-string v5, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "network_selection_act_key"

    const-string v5, "-1"

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 886
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_5

    .line 887
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "failed to commit network selection preference"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 857
    .end local v20           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v35           #networkSelection:Ljava/lang/String;
    .end local v41           #sp:Landroid/content/SharedPreferences;
    .restart local v22       #i:I
    .restart local v39       #serviceGroupCode:I
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 841
    :cond_7
    add-int/lit8 v22, v22, 0x2

    goto/16 :goto_3

    .line 900
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v22           #i:I
    .end local v39           #serviceGroupCode:I
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 901
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 902
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "automatic network selection: failed!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 904
    :cond_8
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "automatic network selection: succeeded!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 910
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const/16 v27, 0x1

    .line 912
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 914
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_9

    .line 915
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 919
    :cond_9
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xf

    if-le v3, v5, :cond_b

    .line 924
    :cond_a
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 928
    :cond_b
    const-string v3, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcCdmaSIMRecords, IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxxxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxxxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v3, :cond_c

    .line 935
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 936
    .local v32, mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 943
    .end local v32           #mcc:I
    :cond_c
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d

    .line 951
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 958
    .restart local v32       #mcc:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSimChanged()V

    goto/16 :goto_1

    .line 937
    .end local v32           #mcc:I
    :catch_1
    move-exception v19

    .line 938
    .local v19, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 939
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 964
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :sswitch_5
    const/16 v27, 0x1

    .line 966
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 967
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 969
    .local v15, data:[B
    const/16 v28, 0x0

    .line 970
    .local v28, isValidMbdn:Z
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_e

    .line 972
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 982
    const/16 v28, 0x1

    .line 993
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 996
    if-eqz v28, :cond_10

    .line 999
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    if-lez v3, :cond_f

    .line 1001
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1006
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 1007
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    const/4 v7, 0x1

    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1013
    :cond_10
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1021
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v28           #isValidMbdn:Z
    :sswitch_6
    const/16 v27, 0x1

    .line 1023
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1025
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 1027
    const-string v5, "HtcCdmaSIMRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v3, v7, :cond_11

    const-string v3, "[MAILBOX]"

    :goto_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_2

    .line 1037
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 1040
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1041
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1027
    :cond_11
    const-string v3, "[MBDN]"

    goto :goto_6

    .line 1048
    :cond_12
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .line 1050
    .local v4, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v5, "HtcCdmaSIMRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v3, v7, :cond_13

    const-string v3, " EF[MAILBOX]"

    :goto_7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_14

    .line 1057
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1058
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1063
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1064
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1050
    :cond_13
    const-string v3, " EF[MBDN]"

    goto :goto_7

    .line 1071
    :cond_14
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1072
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1076
    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v27, 0x1

    .line 1078
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1080
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_15

    .line 1081
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1086
    :cond_15
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1a

    .line 1088
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    .line 1090
    .local v38, results:[Ljava/lang/String;
    if-eqz v38, :cond_19

    move-object/from16 v0, v38

    array-length v3, v0

    const/4 v5, 0x5

    if-lt v3, v5, :cond_19

    .line 1092
    const/4 v3, 0x0

    aget-object v3, v38, v3

    if-eqz v3, :cond_16

    .line 1094
    const/4 v3, 0x0

    aget-object v3, v38, v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v34

    .line 1095
    .local v34, name:[B
    const/4 v3, 0x0

    move-object/from16 v0, v34

    array-length v5, v0

    move-object/from16 v0, v34

    invoke-static {v0, v3, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1098
    .end local v34           #name:[B
    :cond_16
    const/4 v3, 0x1

    aget-object v3, v38, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 1100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 1101
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msisdnTag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 1104
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msisdn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    .end local v38           #results:[Ljava/lang/String;
    :cond_18
    :goto_8
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSISDN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1108
    .restart local v38       #results:[Ljava/lang/String;
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1109
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    goto :goto_8

    .line 1114
    .end local v38           #results:[Ljava/lang/String;
    :cond_1a
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1129
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v27, 0x0

    .line 1130
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1132
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_1b

    .line 1133
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1135
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1139
    :cond_1b
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1142
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    .line 1143
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    goto/16 :goto_1

    .line 1150
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const/16 v27, 0x1

    .line 1152
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1153
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1155
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1159
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 1164
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_1c

    .line 1165
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Uninitialized record MWIS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1170
    :cond_1c
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1d

    const/16 v48, 0x1

    .line 1171
    .local v48, voiceMailWaiting:Z
    :goto_9
    const/4 v3, 0x1

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 1180
    if-eqz v48, :cond_2

    .line 1181
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1182
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    const/16 v5, 0xff

    if-ne v3, v5, :cond_2

    .line 1183
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1170
    .end local v48           #voiceMailWaiting:Z
    :cond_1d
    const/16 v48, 0x0

    goto :goto_9

    .line 1186
    .restart local v48       #voiceMailWaiting:Z
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v3, :cond_2

    .line 1187
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1196
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v48           #voiceMailWaiting:Z
    :sswitch_a
    const/16 v27, 0x1

    .line 1198
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1199
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1201
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1f

    .line 1203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 1212
    :cond_1f
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-nez v3, :cond_2

    .line 1218
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit8 v25, v3, 0xf

    .line 1221
    .local v25, indicator:I
    const/16 v3, 0xa

    move/from16 v0, v25

    if-ne v0, v3, :cond_20

    .line 1223
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1224
    :cond_20
    const/4 v3, 0x5

    move/from16 v0, v25

    if-ne v0, v3, :cond_2

    .line 1225
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1233
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v25           #indicator:I
    :sswitch_b
    const/16 v27, 0x1

    .line 1235
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1236
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1238
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1242
    const/4 v3, 0x0

    array-length v5, v15

    invoke-static {v15, v3, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    .line 1244
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1250
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :sswitch_c
    const/16 v27, 0x1

    .line 1252
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1253
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1255
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_21

    .line 1256
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "query UIM ID fail!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1260
    :cond_21
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    new-array v0, v3, [B

    move-object/from16 v17, v0

    .line 1261
    .local v17, dst:[B
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v15, v6

    move-object/from16 v0, v17

    invoke-static {v15, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1263
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 1265
    .local v18, dsttemp:[B
    const/4 v3, 0x0

    aget-byte v49, v15, v3

    .local v49, xx:I
    const/16 v50, 0x0

    .local v50, yy:I
    :goto_a
    if-lez v49, :cond_22

    .line 1266
    add-int/lit8 v3, v49, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v50

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1265
    add-int/lit8 v49, v49, -0x1

    add-int/lit8 v50, v50, 0x1

    goto :goto_a

    .line 1268
    :cond_22
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v46

    .line 1269
    .local v46, uimId:Ljava/lang/String;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v46

    .line 1270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.cdma.uim.id"

    move-object/from16 v0, v46

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1275
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v17           #dst:[B
    .end local v18           #dsttemp:[B
    .end local v46           #uimId:Ljava/lang/String;
    .end local v49           #xx:I
    .end local v50           #yy:I
    :sswitch_d
    const/16 v27, 0x1

    .line 1276
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1277
    .restart local v11       #ar:Landroid/os/AsyncResult;
    if-eqz v11, :cond_23

    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 1279
    :cond_23
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "EVENT_GET_HTC_SIM_TYPES, exception happen !!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1282
    :cond_24
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v26, v0

    .line 1283
    .local v26, ints:[I
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_HTC_SIM_TYPES: simtype group= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v26, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,simtype= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v26, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    move-object/from16 v0, v26

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_25

    .line 1286
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simtype= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v26, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "gsm.htc.sim.types.group"

    const/4 v6, 0x0

    aget v6, v26, v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1288
    :cond_25
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "get ruturning value 2 from WSD"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    .line 1297
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v26           #ints:[I
    :sswitch_e
    const/16 v27, 0x1

    .line 1299
    :try_start_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1300
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1302
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_28

    .line 1330
    :try_start_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_27

    .line 1331
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v3, :cond_5c

    .line 1333
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1335
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1347
    .end local v32           #mcc:I
    :cond_27
    :goto_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1306
    :cond_28
    :try_start_b
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    array-length v3, v15

    const/4 v5, 0x3

    if-ge v3, v5, :cond_2b

    .line 1310
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt AD data on SIM"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1330
    :try_start_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2a

    .line 1331
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v3, :cond_5d

    .line 1333
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1335
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 1347
    .end local v32           #mcc:I
    :cond_2a
    :goto_d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1316
    :cond_2b
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    aget-byte v5, v15, v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    :goto_e
    invoke-virtual {v3, v6, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 1319
    array-length v3, v15

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2f

    .line 1320
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1330
    :try_start_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2d

    .line 1331
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v3, :cond_5e

    .line 1333
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1335
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1347
    .end local v32           #mcc:I
    :cond_2d
    :goto_f
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1316
    :cond_2e
    const/4 v5, 0x0

    goto :goto_e

    .line 1324
    :cond_2f
    const/4 v3, 0x3

    :try_start_13
    aget-byte v3, v15, v3

    and-int/lit8 v3, v3, 0xf

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1326
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/16 v5, 0xf

    if-ne v3, v5, :cond_30

    .line 1327
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1330
    :cond_30
    :try_start_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_32

    .line 1331
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v3, :cond_5f

    .line 1333
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1335
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1347
    .end local v32           #mcc:I
    :cond_32
    :goto_10
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1330
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_34

    .line 1331
    :cond_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v5, :cond_5b

    .line 1333
    :try_start_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1335
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1347
    .end local v32           #mcc:I
    :cond_34
    :goto_11
    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v5, :cond_35

    .line 1330
    :cond_35
    throw v3

    .line 1356
    :sswitch_f
    const/16 v27, 0x1

    .line 1357
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1358
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1362
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v27, 0x1

    .line 1364
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1365
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1367
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1371
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-nez v3, :cond_2

    .line 1376
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit8 v3, v3, 0xf

    const/16 v5, 0xa

    if-ne v3, v5, :cond_36

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 1379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_1

    .line 1376
    :cond_36
    const/4 v3, 0x0

    goto :goto_12

    .line 1384
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :sswitch_11
    const/16 v27, 0x1

    .line 1386
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1387
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1389
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1393
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 1398
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :sswitch_12
    const/16 v27, 0x1

    .line 1400
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1401
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1403
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1406
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->parseEfFplmn([B)V

    goto/16 :goto_1

    .line 1411
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1412
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 1413
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords update failed"

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1418
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    const/16 v27, 0x1

    .line 1420
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1421
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1423
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1427
    new-instance v45, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;

    const/4 v3, 0x0

    array-length v5, v15

    move-object/from16 v0, v45

    invoke-direct {v0, v15, v3, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;-><init>([BII)V

    .line 1429
    .local v45, tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    :goto_13
    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->isValidObject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1430
    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getTag()I

    move-result v3

    const/16 v5, 0x43

    if-ne v3, v5, :cond_37

    .line 1431
    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v3, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1429
    :cond_37
    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->nextObject()Z

    goto :goto_13

    .line 1440
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v45           #tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    :sswitch_15
    const/16 v27, 0x1

    .line 1442
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1443
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1446
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1450
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v3, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "marked read: sms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1455
    :sswitch_17
    const/16 v27, 0x0

    .line 1457
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1459
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v24, v0

    .line 1461
    .local v24, index:[I
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_38

    move-object/from16 v0, v24

    array-length v3, v0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_39

    .line 1462
    :cond_38
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaSIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1467
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget v6, v24, v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1470
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    const/4 v6, 0x0

    aget v6, v24, v6

    const/16 v7, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1477
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v24           #index:[I
    :sswitch_18
    const/16 v27, 0x0

    .line 1478
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1479
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3b

    .line 1481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_3a

    .line 1482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 1484
    :cond_3a
    const/4 v5, -0x1

    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 1487
    :cond_3b
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaSIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1493
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v27, 0x1

    .line 1495
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1496
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1498
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3c

    .line 1499
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaSIMRecords] Error on EF_CBMI with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1503
    :cond_3c
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1506
    .local v14, channelslList:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v44, v0

    .line 1509
    .local v44, temp:[B
    if-eqz v15, :cond_2

    .line 1510
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_14
    array-length v3, v15

    move/from16 v0, v22

    if-ge v0, v3, :cond_40

    .line 1512
    aget-byte v3, v15, v22

    const/4 v5, -0x1

    if-eq v3, v5, :cond_40

    add-int/lit8 v3, v22, 0x1

    aget-byte v3, v15, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_40

    .line 1514
    const/4 v3, 0x0

    aget-byte v5, v15, v22

    aput-byte v5, v44, v3

    .line 1515
    const/4 v3, 0x1

    add-int/lit8 v5, v22, 0x1

    aget-byte v5, v15, v5

    aput-byte v5, v44, v3

    .line 1516
    const/4 v3, 0x0

    aget-byte v3, v44, v3

    shl-int/lit8 v3, v3, 0x8

    if-gez v3, :cond_3e

    .line 1517
    const/4 v3, 0x0

    aget-byte v3, v44, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit16 v10, v3, 0x100

    .line 1520
    .local v10, a:I
    :goto_15
    const/4 v3, 0x1

    aget-byte v3, v44, v3

    if-gez v3, :cond_3f

    .line 1521
    const/4 v3, 0x1

    aget-byte v3, v44, v3

    add-int/lit16 v12, v3, 0x100

    .line 1524
    .local v12, b:I
    :goto_16
    add-int v23, v10, v12

    .line 1525
    .local v23, id:I
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    array-length v3, v15

    add-int/lit8 v3, v3, -0x2

    move/from16 v0, v22

    if-eq v0, v3, :cond_3d

    add-int/lit8 v3, v22, 0x2

    aget-byte v3, v15, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3d

    add-int/lit8 v3, v22, 0x3

    aget-byte v3, v15, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3d

    .line 1527
    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    :cond_3d
    add-int/lit8 v22, v22, 0x2

    goto :goto_14

    .line 1519
    .end local v10           #a:I
    .end local v12           #b:I
    .end local v23           #id:I
    :cond_3e
    const/4 v3, 0x0

    aget-byte v3, v44, v3

    shl-int/lit8 v10, v3, 0x8

    .restart local v10       #a:I
    goto :goto_15

    .line 1523
    :cond_3f
    const/4 v3, 0x1

    aget-byte v12, v44, v3

    .restart local v12       #b:I
    goto :goto_16

    .line 1531
    .end local v10           #a:I
    .end local v12           #b:I
    :cond_40
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1535
    .local v33, mid:Ljava/lang/String;
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI length (string): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1555
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #channelslList:Ljava/lang/StringBuilder;
    .end local v15           #data:[B
    .end local v22           #i:I
    .end local v33           #mid:Ljava/lang/String;
    .end local v44           #temp:[B
    :sswitch_1a
    const-string v3, "*********Set EF CDMI done"

    const-string v5, "completed!! "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/16 v27, 0x0

    .line 1557
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1559
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1560
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1562
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1569
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    const-string v3, "*********Set EF LP done"

    const-string v5, "completed!! "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/16 v27, 0x0

    .line 1571
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1573
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1574
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1576
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1580
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v27, 0x1

    .line 1582
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1583
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1585
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_41

    .line 1586
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaSIMRecords] Error on EF_LP with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1590
    :cond_41
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 1591
    .local v31, mLpList:Ljava/lang/StringBuilder;
    const/16 v30, 0x0

    .line 1593
    .local v30, lp:Ljava/lang/String;
    if-eqz v15, :cond_45

    .line 1596
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_17
    array-length v3, v15

    move/from16 v0, v22

    if-ge v0, v3, :cond_44

    .line 1598
    aget-byte v3, v15, v22

    const/4 v5, -0x1

    if-eq v3, v5, :cond_44

    .line 1600
    aget-byte v3, v15, v22

    if-gez v3, :cond_43

    .line 1601
    aget-byte v3, v15, v22

    add-int/lit16 v0, v3, 0x100

    move/from16 v47, v0

    .line 1604
    .local v47, value:I
    :goto_18
    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_42

    add-int/lit8 v3, v22, 0x1

    aget-byte v3, v15, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_42

    .line 1606
    const-string v3, ","

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    :cond_42
    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    .line 1603
    .end local v47           #value:I
    :cond_43
    aget-byte v47, v15, v22

    .restart local v47       #value:I
    goto :goto_18

    .line 1610
    .end local v47           #value:I
    :cond_44
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1612
    .end local v22           #i:I
    :cond_45
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP(string): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x39

    if-eq v3, v5, :cond_46

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    .line 1620
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v41

    .line 1622
    .restart local v41       #sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v42

    .line 1623
    .local v42, spEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v30, :cond_48

    .line 1625
    const-string v3, ","

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    .line 1626
    .local v36, num:I
    const/4 v3, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1627
    .local v29, langnum:I
    const/16 v3, 0xf

    move/from16 v0, v29

    if-le v0, v3, :cond_47

    .line 1628
    const-string v3, "lang_list"

    const-string v5, "15"

    move-object/from16 v0, v42

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1633
    .end local v29           #langnum:I
    .end local v36           #num:I
    :goto_19
    invoke-interface/range {v42 .. v42}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1630
    .restart local v29       #langnum:I
    .restart local v36       #num:I
    :cond_47
    const-string v3, "lang_list"

    const/4 v5, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1632
    .end local v29           #langnum:I
    .end local v36           #num:I
    :cond_48
    const-string v3, "lang_list"

    const-string v5, "15"

    move-object/from16 v0, v42

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1638
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v30           #lp:Ljava/lang/String;
    .end local v31           #mLpList:Ljava/lang/StringBuilder;
    .end local v41           #sp:Landroid/content/SharedPreferences;
    .end local v42           #spEditor:Landroid/content/SharedPreferences$Editor;
    :sswitch_1d
    const/16 v27, 0x1

    .line 1640
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1641
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1643
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1651
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :sswitch_1e
    const/16 v27, 0x1

    .line 1653
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1655
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1659
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    .line 1661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iCPHS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1665
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_1f
    const/16 v27, 0x0

    .line 1666
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1668
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_49

    .line 1669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1673
    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isCphsMailboxEnabled()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1674
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/Message;

    .line 1684
    .local v37, onCphsCompleted:Landroid/os/Message;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4a

    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 1685
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1687
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1689
    const-string v3, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1691
    const/16 v37, 0x0

    .line 1694
    :cond_4a
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1699
    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v37           #onCphsCompleted:Landroid/os/Message;
    :cond_4b
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1700
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1702
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1707
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_20
    const/16 v27, 0x0

    .line 1708
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1709
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4c

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1716
    :goto_1a
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1717
    const-string v3, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1718
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1720
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1713
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CPHS MailBox with exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 1724
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_21
    const/16 v27, 0x0

    .line 1725
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1726
    .restart local v11       #ar:Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim REFRESH with exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1727
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1728
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_1

    .line 1732
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_22
    const/16 v27, 0x1

    .line 1734
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1735
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1737
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1741
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    .line 1747
    const/4 v3, 0x1

    aget-byte v3, v15, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4d

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 1749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_1

    .line 1747
    :cond_4d
    const/4 v3, 0x0

    goto :goto_1b

    .line 1753
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :sswitch_23
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "EVENT_PBK_READY"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v5, "LOADED_UNDER_NETWORK_LOCK"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "(EVENT_PBK_READY) Broadcast  INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK to load sim pb done."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1779
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1781
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1782
    const-string v3, "Callback with GET SUBSIDY LOCK successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1783
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1785
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4e

    .line 1786
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1789
    :cond_4e
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1793
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1795
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1796
    const-string v3, "Callback with SET SUBSIDY LOCK successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1797
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1799
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1803
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1804
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 1806
    .local v40, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4f

    if-eqz v40, :cond_4f

    .line 1808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.types"

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1812
    :cond_4f
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimTypes error - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1820
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v40           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_27
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "Delay CFU Query..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1826
    :sswitch_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->htcOnAllRecordsLoaded()V

    goto/16 :goto_1

    .line 1831
    :sswitch_29
    const/16 v27, 0x1

    .line 1832
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1833
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_50

    .line 1834
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI(G), Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1837
    :cond_50
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1838
    .restart local v15       #data:[B
    if-eqz v15, :cond_59

    array-length v3, v15

    const/4 v5, 0x1

    if-le v3, v5, :cond_59

    .line 1850
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v16, v0

    .line 1851
    .local v16, dataLen:I
    if-lez v16, :cond_52

    .line 1852
    add-int/lit8 v16, v16, 0x1

    .line 1853
    array-length v3, v15

    move/from16 v0, v16

    if-le v0, v3, :cond_51

    .line 1854
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying IMSI(G) length over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    array-length v0, v15

    move/from16 v16, v0

    .line 1862
    :cond_51
    :goto_1c
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    .line 1863
    .local v43, strBuf:Ljava/lang/StringBuilder;
    if-lez v16, :cond_53

    const/4 v3, 0x1

    aget-byte v3, v15, v3

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v13, v3, 0xf

    .line 1864
    .local v13, bcdValue:I
    :goto_1d
    const/16 v3, 0xa

    if-ge v13, v3, :cond_58

    .line 1865
    add-int/lit8 v3, v13, 0x30

    int-to-char v3, v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1866
    const/16 v22, 0x2

    .restart local v22       #i:I
    :goto_1e
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_56

    .line 1867
    aget-byte v3, v15, v22

    and-int/lit8 v13, v3, 0xf

    .line 1868
    const/16 v3, 0xa

    if-ge v13, v3, :cond_55

    .line 1869
    add-int/lit8 v3, v13, 0x30

    int-to-char v3, v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1870
    aget-byte v3, v15, v22

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v13, v3, 0xf

    .line 1871
    const/16 v3, 0xa

    if-ge v13, v3, :cond_54

    .line 1872
    add-int/lit8 v3, v13, 0x30

    int-to-char v3, v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1866
    :goto_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_1e

    .line 1859
    .end local v13           #bcdValue:I
    .end local v22           #i:I
    .end local v43           #strBuf:Ljava/lang/StringBuilder;
    :cond_52
    array-length v0, v15

    move/from16 v16, v0

    .line 1860
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying IMSI(G) length empty "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1863
    .restart local v43       #strBuf:Ljava/lang/StringBuilder;
    :cond_53
    const/16 v13, 0xf

    goto :goto_1d

    .line 1875
    .restart local v13       #bcdValue:I
    .restart local v22       #i:I
    :cond_54
    move/from16 v22, v16

    goto :goto_1f

    .line 1879
    :cond_55
    move/from16 v22, v16

    goto :goto_1f

    .line 1882
    :cond_56
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    .line 1883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_57

    .line 1884
    const-string v3, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcCdmaSIMRecords, IMSI(G): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxxxxxxxx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    goto/16 :goto_1

    .line 1890
    :cond_57
    const-string v3, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcCdmaSIMRecords, IMSI(G): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1894
    .end local v22           #i:I
    :cond_58
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying IMSI(G) length error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v15, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1898
    .end local v13           #bcdValue:I
    .end local v16           #dataLen:I
    .end local v43           #strBuf:Ljava/lang/StringBuilder;
    :cond_59
    const-string v5, "HtcCdmaSIMRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying IMSI(G) length zero "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v15, :cond_5a

    array-length v3, v15

    :goto_20
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5a
    const/4 v3, -0x1

    goto :goto_20

    .line 1342
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :cond_5b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1344
    const-string v5, "HtcCdmaSIMRecords"

    const-string v6, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1336
    :catch_2
    move-exception v19

    .line 1337
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1338
    const-string v5, "HtcCdmaSIMRecords"

    const-string v6, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1342
    .end local v19           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #ar:Landroid/os/AsyncResult;
    .restart local v15       #data:[B
    :cond_5c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1344
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1336
    :catch_3
    move-exception v19

    .line 1337
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1338
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1342
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :cond_5d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1344
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1336
    :catch_4
    move-exception v19

    .line 1337
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1338
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1342
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :cond_5e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1344
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1336
    :catch_5
    move-exception v19

    .line 1337
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1338
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1342
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :cond_5f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1344
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1336
    :catch_6
    move-exception v19

    .line 1337
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1338
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_10

    .line 815
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_b
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_e
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_f
        0xd -> :sswitch_11
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_1f
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x18 -> :sswitch_10
        0x19 -> :sswitch_20
        0x1a -> :sswitch_1e
        0x1e -> :sswitch_8
        0x1f -> :sswitch_21
        0x20 -> :sswitch_22
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1a
        0x25 -> :sswitch_2
        0x26 -> :sswitch_c
        0x27 -> :sswitch_d
        0x65 -> :sswitch_26
        0x66 -> :sswitch_24
        0x67 -> :sswitch_25
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_3
        0x6b -> :sswitch_12
        0x6c -> :sswitch_27
        0x6d -> :sswitch_23
        0x6e -> :sswitch_28
        0x6f -> :sswitch_29
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2711
    const-string v0, "HtcCdmaSIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2715
    const-string v0, "HtcCdmaSIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    return-void
.end method

.method public notifyIMSIchange()V
    .locals 3

    .prologue
    .line 2770
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    if-eqz v0, :cond_0

    .line 2771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 2772
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Notify ICC loaded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :goto_0
    return-void

    .line 2776
    :cond_0
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Nothing notify "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2171
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: record load complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    const/4 v2, 0x0

    .line 2176
    .local v2, simstate:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2177
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 2178
    const-string v3, "gsm.icc.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2188
    :cond_1
    :goto_0
    const-string v3, "READY"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2189
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: record load complete, but SIM is not ready state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :goto_1
    return-void

    .line 2179
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 2180
    const-string v3, "gsm.icc.sub.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2181
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2182
    const-string v3, "gsm.icc.uim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2185
    :cond_4
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2195
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 2198
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2203
    .local v1, operator:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2206
    .local v0, htcThreadUpdateOperator:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2211
    :cond_6
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2212
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.cdma.uim.operator.numeric"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2214
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 2222
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==>HtcCdmaSIMRecords:operator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    move-object v0, v1

    .line 2233
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_9

    .line 2235
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.alpha"

    const-string v5, "China Telecom"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 2243
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 2248
    :cond_a
    if-eqz v0, :cond_d

    .line 2249
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v4, 0x6e

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->htcThreadUpdateCarrierInProvider(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2217
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2239
    :cond_c
    const-string v3, "SIM"

    const-string v4, "[HtcCdmaSIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2253
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->htcOnAllRecordsLoaded()V

    goto/16 :goto_1
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 292
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 293
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 294
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 295
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 296
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    .line 298
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    .line 299
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 300
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 301
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 302
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 304
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 307
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 324
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->resetVoiceCallForwardingFlag(IZ)V

    .line 329
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 333
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 335
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2159
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2161
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2162
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onAllRecordsLoaded()V

    .line 2167
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 2164
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "HtcCdmaSIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 735
    if-eqz p1, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 741
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 743
    :cond_0
    return-void
.end method

.method queryCFUIfNecessary()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 708
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    if-eqz v3, :cond_1

    .line 709
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->checkTestIcc()Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cfu_query_when_campon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 713
    .local v0, cfuQuery:Z
    :goto_0
    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 716
    const/16 v1, 0x6c

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 720
    .end local v0           #cfuQuery:Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    if-eqz v1, :cond_1

    .line 721
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 725
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 711
    goto :goto_0
.end method

.method resetVoiceCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 696
    if-eq p1, v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    if-eq v0, p2, :cond_0

    .line 700
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto :goto_0
.end method

.method public setCBLanguageEFlp([B)V
    .locals 3
    .parameter "lp"

    .prologue
    .line 2019
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f05

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2023
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 3
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 2031
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f45

    const/16 v2, 0x24

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2036
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x6f40

    const/16 v6, 0x1e

    const/4 v4, 0x1

    .line 378
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 381
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v0, "gsm.sim.types"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, simType:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v3, 0x6f4e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v3, 0x6f4a

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 2729
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2730
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2732
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 579
    if-eq p1, v0, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 583
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 591
    if-eqz p2, :cond_3

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 600
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 606
    if-eqz p2, :cond_4

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 614
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v6

    .line 619
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 594
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 610
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceCallForwardingFlag(IZILjava/lang/String;)V
    .locals 10
    .parameter "line"
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "dialNumber"

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x1

    .line 631
    if-eq p1, v0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 635
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_3

    .line 643
    if-eqz p2, :cond_5

    .line 647
    if-nez p3, :cond_4

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    .line 653
    :goto_1
    if-eqz p4, :cond_2

    .line 654
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v8

    .line 655
    .local v8, str:[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 656
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v8

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    .end local v8           #str:[B
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 673
    if-eqz p2, :cond_6

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 681
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v6

    .line 686
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 650
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    and-int/lit8 v2, p3, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 660
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 662
    const/4 v7, 0x2

    .local v7, i:I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v7

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 662
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 677
    .end local v7           #i:I
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 435
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 438
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 464
    :goto_0
    return-void

    .line 442
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 443
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 445
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 449
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 462
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 491
    if-eq p1, v1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    if-gez p2, :cond_4

    .line 498
    const/4 p2, -0x1

    .line 505
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-eqz v2, :cond_3

    .line 514
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 518
    if-gez p2, :cond_7

    .line 525
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 536
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v0, :cond_8

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v6

    .line 555
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 499
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 502
    const/16 p2, 0xff

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 514
    goto :goto_2

    .line 529
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_3

    .line 533
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 543
    :cond_8
    const/16 v0, 0xa

    goto :goto_4
.end method
