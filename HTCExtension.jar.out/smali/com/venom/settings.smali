.class public Lcom/venom/settings;
.super Ljava/lang/Object;
.source "settings.java"


# static fields
.field public static final default_fake_sn:Ljava/lang/String; = "HT23YW421835"

.field public static fake_device:S = 0x0s

.field public static final fake_sense:Ljava/lang/String; = "4.0"

.field public static fake_sn:Ljava/lang/String; = null

.field public static real_sense:Ljava/lang/String; = null

.field public static final venom_Extension_Version:Ljava/lang/String; = "1.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HT23YW421835"

    sput-object v0, Lcom/venom/settings;->fake_sn:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/venom/settings;->real_sense:Ljava/lang/String;

    const/16 v0, 0xe1

    sput-short v0, Lcom/venom/settings;->fake_device:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFakeDevice()S
    .locals 1

    sget-short v0, Lcom/venom/settings;->fake_device:S

    return v0
.end method

.method public static getFakeSN()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "venom.fake_sn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/venom/settings;->fake_sn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/venom/settings;->fake_sn:Ljava/lang/String;

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "HT23YW421835"

    sput-object v1, Lcom/venom/settings;->fake_sn:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFakeSense()Ljava/lang/String;
    .locals 1

    const-string v0, "4.0"

    return-object v0
.end method

.method public static getRealSense()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/venom/settings;->real_sense:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_Sense_Version()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/venom/settings;->real_sense:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/venom/settings;->real_sense:Ljava/lang/String;

    return-object v0
.end method

.method public static showDebug()V
    .locals 3

    const-string v0, "m0narX_lib"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FakeDevice = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/venom/settings;->getFakeDevice()S

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "m0narX_lib"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FakeSN = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/venom/settings;->getFakeSN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "m0narX_lib"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FakeSense = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/venom/settings;->getFakeSense()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "m0narX_lib"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RealSense = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/venom/settings;->getRealSense()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
