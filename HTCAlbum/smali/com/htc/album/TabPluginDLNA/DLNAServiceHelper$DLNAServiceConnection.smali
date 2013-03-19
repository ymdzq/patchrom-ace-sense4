.class public Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;
.super Ljava/lang/Object;
.source "DLNAServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLNAServiceConnection"
.end annotation


# instance fields
.field private mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Lcom/htc/dlnainterface/IDLNAPluginNotify;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method


# virtual methods
.method public getService()Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    const-string v0, "DLNAServiceHelper"

    const-string v1, "getService null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const-string v0, "DLNAServiceHelper"

    const-string v1, "DLNA service binded"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const-string v1, "DLNAServiceHelper"

    const-string v2, "DLNA service unbinded"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DLNAServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNotifyCallback(Lcom/htc/dlnainterface/IDLNAPluginNotify;)V
    .locals 5

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->getService()Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "DLNAServiceHelper"

    const-string v3, "Register DLNA service callback."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DLNAServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set service callback fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
