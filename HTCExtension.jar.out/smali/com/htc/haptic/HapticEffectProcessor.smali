.class public abstract Lcom/htc/haptic/HapticEffectProcessor;
.super Ljava/lang/Object;
.source "HapticEffectProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIvtRawData(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .parameter "ctx"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIvtRawData(Ljava/lang/String;)[B
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listEffect(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listEffect(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listEffect([B)[Ljava/lang/String;
    .locals 1
    .parameter "ivtRawData"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newEffectProcess(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/haptic/HapticEffectProcessor;
    .locals 1
    .parameter "ctx"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newEffectProcess(Ljava/lang/String;)Lcom/htc/haptic/HapticEffectProcessor;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newEffectProcess([B)Lcom/htc/haptic/HapticEffectProcessor;
    .locals 1
    .parameter "ivtRawData"

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getEffectSize()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, -0x1

    return v0
.end method

.method public abstract listEffect()[Ljava/lang/String;
.end method
