.class public Lcom/htc/album/TabPluginDevice/LocalBurstShotDMCAdapter;
.super Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;
.source "LocalBurstShotDMCAdapter.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalBurstShotDMCAdapter"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalBurstShotDMCAdapter"

    return-object v0
.end method
