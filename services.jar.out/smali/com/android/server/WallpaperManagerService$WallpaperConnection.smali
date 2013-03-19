.class Lcom/android/server/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field private mWPConnHeight:I

.field private mWPConnWidth:I

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;)V
    .locals 2
    .parameter
    .parameter "info"

    .prologue
    const/4 v1, -0x1

    .line 196
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 187
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 192
    iput v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    .line 193
    iput v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    .line 197
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 198
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/WallpaperManagerService$WallpaperConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WallpaperManagerService$WallpaperConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    return p1
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 4
    .parameter "engine"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 239
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachEngine WPConn w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    iget v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    if-eq v0, v2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 244
    :try_start_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    const-string v0, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachEngine setDesiredSize w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-interface {v0, v2, v3}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V

    .line 246
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    .line 247
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :goto_0
    :try_start_2
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_3

    const-string v0, "WallpaperService"

    const-string v2, "attachEngine notifyCallbacksLocked"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)V

    .line 254
    :cond_4
    monitor-exit v1

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    .line 204
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 206
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected attachServiceLocked w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnWidth:I

    .line 208
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    iput v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWPConnHeight:I

    .line 210
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)V

    .line 215
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    const-string v0, "WallpaperService"

    const-string v2, "onServiceConnected saveSettingsLocked"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;)V

    .line 218
    :cond_2
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 225
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 226
    const-string v0, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-boolean v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-wide v2, v0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 229
    const-string v0, "WallpaperService"

    const-string v2, "Reverting to built-in wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 233
    :cond_0
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "name"

    .prologue
    .line 259
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperConnection setWallpaper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    .line 264
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
