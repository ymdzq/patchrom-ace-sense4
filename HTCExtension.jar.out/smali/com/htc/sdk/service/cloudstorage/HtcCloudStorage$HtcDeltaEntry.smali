.class public Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDeltaEntry;
.super Ljava/lang/Object;
.source "HtcCloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcDeltaEntry"
.end annotation


# instance fields
.field public final lcPath:Ljava/lang/String;

.field public final metadata:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDeltaEntry;->lcPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDeltaEntry;->metadata:Ljava/lang/String;

    return-void
.end method
