.class public Lcom/sprint/dm/DeviceManagement;
.super Ljava/lang/Object;
.source "DeviceManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dm/DeviceManagement$DmEntity;
    }
.end annotation


# static fields
.field public static final BLUETOOTH:Lcom/sprint/dm/DeviceManagement$DmEntity; = null

.field public static final CAMERA:Lcom/sprint/dm/DeviceManagement$DmEntity; = null

#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field public static final ENCRYPT:Lcom/sprint/dm/DeviceManagement$DmEntity; = null

.field public static final ENCRYPT_SD:Lcom/sprint/dm/DeviceManagement$DmEntity; = null

.field public static final GPS_DISABLED:I = 0x1

.field public static final GPS_ENABLED:I = 0x0

.field public static final GPS_FORCED:I = 0x2

.field public static final HOTSPOT:Lcom/sprint/dm/DeviceManagement$DmEntity;

.field public static final IS_BOOST_PROJECT:Z

.field public static final IS_NOT_SPC_PROJECT:Z

.field public static final IS_SPRINT_PROJECT:Z

.field public static final IS_VM_PROJECT:Z

.field public static final SD_CARD:Lcom/sprint/dm/DeviceManagement$DmEntity;

.field private static TAG:Ljava/lang/String;

.field public static final USB_DATA:Lcom/sprint/dm/DeviceManagement$DmEntity;

.field public static final USB_DRIVE:Lcom/sprint/dm/DeviceManagement$DmEntity;

.field public static final USB_PORT:Lcom/sprint/dm/DeviceManagement$DmEntity;

.field public static final WIFI:Lcom/sprint/dm/DeviceManagement$DmEntity;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPermissionPass:Z

.field private mSignaturePass:Z

.field private mStorageManager:Landroid/os/storage/HtcIfStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/sprint/dm/DeviceManagement;->DEBUG:Z

    .line 21
    const-string v0, "HTC-DSA-DeviceManagement"

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->TAG:Ljava/lang/String;

    .line 23
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_SPRINT_PROJECT:Z

    .line 24
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_VM_PROJECT:Z

    .line 25
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_BOOST_PROJECT:Z

    .line 26
    sget-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_SPRINT_PROJECT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_VM_PROJECT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_BOOST_PROJECT:Z

    if-nez v0, :cond_3

    :goto_3
    sput-boolean v1, Lcom/sprint/dm/DeviceManagement;->IS_NOT_SPC_PROJECT:Z

    .line 32
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string v1, "bluetooth"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->BLUETOOTH:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 33
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string v1, "camera"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->CAMERA:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 34
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string v1, "encrypt"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->ENCRYPT:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 35
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string v1, "encrypt_sd"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->ENCRYPT_SD:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 36
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string v1, "hotspot"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->HOTSPOT:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 37
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string v1, "sd_card"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->SD_CARD:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 38
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string/jumbo v1, "usb_data"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->USB_DATA:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 39
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string/jumbo v1, "usb_drive"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->USB_DRIVE:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 40
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string/jumbo v1, "usb_port"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->USB_PORT:Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 41
    new-instance v0, Lcom/sprint/dm/DeviceManagement$DmEntity;

    const-string/jumbo v1, "wifi"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagement$DmEntity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dm/DeviceManagement;->WIFI:Lcom/sprint/dm/DeviceManagement$DmEntity;

    return-void

    :cond_0
    move v0, v2

    .line 23
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 24
    goto :goto_1

    :cond_2
    move v0, v2

    .line 25
    goto :goto_2

    :cond_3
    move v1, v2

    .line 26
    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mSignaturePass:Z

    .line 54
    iput-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mPermissionPass:Z

    .line 57
    sget-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/sprint/dm/DeviceManagement;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mSignaturePass:Z

    .line 64
    iget-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mSignaturePass:Z

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/sprint/dm/DeviceManagement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dm/DeviceManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {v0}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mPermissionPass:Z

    .line 77
    iget-object v0, p0, Lcom/sprint/dm/DeviceManagement;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/HtcIfStorageManager;

    iput-object v0, p0, Lcom/sprint/dm/DeviceManagement;->mStorageManager:Landroid/os/storage/HtcIfStorageManager;

    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Lcom/sprint/dm/DeviceManagement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dm/DeviceManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDmEntityValid(Lcom/sprint/dm/DeviceManagement$DmEntity;)Z
    .locals 6
    .parameter "dmEntity"

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, result:Z
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/sprint/dm/DeviceManagement;->getSupportedDmEntities()Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dm/DeviceManagement$DmEntity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dm/DeviceManagement$DmEntity;

    .line 157
    .local v3, supportedDmEntity:Lcom/sprint/dm/DeviceManagement$DmEntity;
    iget-object v4, v3, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    iget-object v5, p1, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const/4 v2, 0x1

    .line 163
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dm/DeviceManagement$DmEntity;>;"
    .end local v3           #supportedDmEntity:Lcom/sprint/dm/DeviceManagement$DmEntity;
    :cond_1
    return v2
.end method

.method private isSdcardRestricted()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sprint/dm/DeviceManagement;->mStorageManager:Landroid/os/storage/HtcIfStorageManager;

    invoke-interface {v0}, Landroid/os/storage/HtcIfStorageManager;->isSdcardRestricted()Z

    move-result v0

    return v0
.end method

.method private setSdcardRestricted(Z)V
    .locals 1
    .parameter "restrict"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sprint/dm/DeviceManagement;->mStorageManager:Landroid/os/storage/HtcIfStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/HtcIfStorageManager;->setSdcardRestricted(Z)V

    .line 195
    return-void
.end method


# virtual methods
.method public getGpsState()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedDmEntities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dm/DeviceManagement$DmEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    sget-boolean v1, Lcom/sprint/dm/DeviceManagement;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/dm/DeviceManagement$DmEntity;>;"
    sget-object v1, Lcom/sprint/dm/DeviceManagement;->SD_CARD:Lcom/sprint/dm/DeviceManagement$DmEntity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isEntityRestricted(Lcom/sprint/dm/DeviceManagement$DmEntity;)Z
    .locals 3
    .parameter "dmEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/dm/DeviceManagementException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    sget-boolean v1, Lcom/sprint/dm/DeviceManagement;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-boolean v1, p0, Lcom/sprint/dm/DeviceManagement;->mSignaturePass:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sprint/dm/DeviceManagement;->mPermissionPass:Z

    if-nez v1, :cond_3

    .line 86
    :cond_2
    new-instance v0, Lcom/sprint/dm/DeviceManagementException;

    const-string v1, "Signature or permission failed!"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_3
    invoke-direct {p0, p1}, Lcom/sprint/dm/DeviceManagement;->isDmEntityValid(Lcom/sprint/dm/DeviceManagement$DmEntity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    sget-object v1, Lcom/sprint/dm/DeviceManagement;->SD_CARD:Lcom/sprint/dm/DeviceManagement$DmEntity;

    iget-object v1, v1, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/sprint/dm/DeviceManagement;->isSdcardRestricted()Z

    move-result v0

    goto :goto_0

    .line 95
    :cond_4
    new-instance v0, Lcom/sprint/dm/DeviceManagementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DmEntity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reboot()V
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mSignaturePass:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mPermissionPass:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/sprint/internal/Platform;

    iget-object v1, p0, Lcom/sprint/dm/DeviceManagement;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/Platform;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sprint/internal/Platform;->reboot()V

    goto :goto_0
.end method

.method public setEntityRestricted(Lcom/sprint/dm/DeviceManagement$DmEntity;Z)V
    .locals 3
    .parameter "dmEntity"
    .parameter "restrict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/dm/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 135
    sget-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mSignaturePass:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mPermissionPass:Z

    if-nez v0, :cond_3

    .line 139
    :cond_2
    new-instance v0, Lcom/sprint/dm/DeviceManagementException;

    const-string v1, "Signature or permission failed!"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_3
    invoke-direct {p0, p1}, Lcom/sprint/dm/DeviceManagement;->isDmEntityValid(Lcom/sprint/dm/DeviceManagement$DmEntity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    sget-object v0, Lcom/sprint/dm/DeviceManagement;->SD_CARD:Lcom/sprint/dm/DeviceManagement$DmEntity;

    iget-object v0, v0, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0, p2}, Lcom/sprint/dm/DeviceManagement;->setSdcardRestricted(Z)V

    goto :goto_0

    .line 147
    :cond_4
    new-instance v0, Lcom/sprint/dm/DeviceManagementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DmEntity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sprint/dm/DeviceManagement$DmEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGpsState(I)V
    .locals 2
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/dm/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 167
    sget-boolean v0, Lcom/sprint/dm/DeviceManagement;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 187
    :pswitch_0
    return-void

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mSignaturePass:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprint/dm/DeviceManagement;->mPermissionPass:Z

    if-nez v0, :cond_2

    .line 171
    :cond_1
    new-instance v0, Lcom/sprint/dm/DeviceManagementException;

    const-string v1, "Signature or permission failed!"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 185
    new-instance v0, Lcom/sprint/dm/DeviceManagementException;

    const-string v1, "Invalid GPS mode!"

    invoke-direct {v0, v1}, Lcom/sprint/dm/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
