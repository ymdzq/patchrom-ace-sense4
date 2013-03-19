.class public abstract Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "ObserverAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ObserverAdapter"


# instance fields
.field private mEnableObserverNotify:Z

.field protected mHandler:Landroid/os/Handler;

.field private mLocker:Ljava/lang/Object;

.field protected mMediaTypes:I

.field protected mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    iput p3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/ObserverAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    return v0
.end method


# virtual methods
.method public enableObserverNotify()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    return-void
.end method

.method public final isObservedDataChange()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->isChanged()Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected onLoadDataBegin()V
    .locals 0

    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataBegin()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->unregisterObserver()V

    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->FINISHED:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->getStatus()Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->registerObserver()V

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataEnd(Ljava/lang/Integer;)V

    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onUnloadData()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->unregisterObserver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ObserverAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ObserverAdapter][onUnloadData]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerObserver()V
    .locals 6

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-nez v2, :cond_7

    new-instance v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;-><init>(Lcom/htc/album/TabPluginDevice/ObserverAdapter;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    const-string v2, "ObserverAdapter"

    const-string v4, "[HTCAlbum][ObserverAdapter][registerObserver]: register new observer.."

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    and-int/lit8 v2, v0, 0xe

    if-eqz v2, :cond_4

    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    and-int/lit16 v2, v0, 0xe0

    if-eqz v2, :cond_5

    sget-object v2, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    sget-boolean v2, Lcom/htc/album/helper/FileOperationManager;->ENABLE_FILEOPERATION:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_FILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_6
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    :try_start_1
    const-string v2, "ObserverAdapter"

    const-string v4, "[HTCAlbum][ObserverAdapter][registerObserver]: already registered skip.."

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterObserver()V
    .locals 4

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const-string v1, "ObserverAdapter"

    const-string v3, "[HTCAlbum][ObserverAdapter][unregisterObserver]: unregister observer.."

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
