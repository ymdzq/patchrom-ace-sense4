.class Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTvDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/medialinkhd/HtcTvDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DongleConfigBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;Lcom/htc/medialinkhd/HtcTvDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 380
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfigBroadcastReceiver"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    #getter for: Lcom/htc/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v2}, Lcom/htc/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .line 382
    .local v0, listener:Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v2, "RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, result:Ljava/lang/String;
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfig SUCCESS"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onTvReadyToPlay()V

    goto :goto_0

    .line 389
    :cond_1
    const-string v2, "WirelessDisplayHelper"

    const-string v3, "DongleConfig FAIL"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onNoTvToPlay()V

    goto :goto_0
.end method
