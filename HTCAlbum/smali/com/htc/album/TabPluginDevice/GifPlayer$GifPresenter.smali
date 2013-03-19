.class public Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
.super Ljava/lang/Object;
.source "GifPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifPresenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GifPresenter"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentBmpDuration:I

.field private mCurrentBmpPos:I

.field private mCurrentDispPos:I

.field private mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

.field private mDispRunnable:Ljava/lang/Runnable;

.field private mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

.field private mFrameCount:I

.field private mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

.field private mStop:Z

.field newSize:[I

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer;Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 5

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->newSize:[I

    new-instance v1, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->ClearDataMember()V

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    if-eqz p3, :cond_0

    const-string v1, "drm"

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gif play uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-direct {v1, v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadData(I)Z

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-direct {v1, p3, p4}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadData(I)Z

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer;Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->newSize:[I

    new-instance v0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->ClearDataMember()V

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    new-instance v0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-direct {v0, p3}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadData(I)Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    return-void
.end method

.method private ClearDataMember()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpDuration:I

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->release()V

    :cond_0
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    return-void
.end method

.method private DisplayNextFrame()V
    .locals 6

    const-wide/16 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    if-gt v3, v4, :cond_1

    const-string v3, "GifPresenter"

    const-string v4, "[HTCAlbum][GifPresenter][DisplayNextFrame] wait begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_0
    const-string v3, "GifPresenter"

    const-string v4, "[HTCAlbum][GifPresenter][DisplayNextFrame] wait end"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpDuration:I

    int-to-long v0, v3

    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$400(Lcom/htc/album/TabPluginDevice/GifPlayer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$2;

    invoke-direct {v4, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$2;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$400(Lcom/htc/album/TabPluginDevice/GifPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    const-string v3, "GifPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DisplayNextFrame] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method static synthetic access$1102(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpDuration:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->DisplayNextFrame()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    return v0
.end method

.method static synthetic access$604(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    return v0
.end method


# virtual methods
.method public FreeResource()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->FreeResource()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->ClearDataMember()V

    return-void
.end method

.method public Pause()V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$400(Lcom/htc/album/TabPluginDevice/GifPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "before decode thread\'s join"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->join()V

    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "after decode thread join"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "End Pause()"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public Play()V
    .locals 2

    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;Lcom/htc/album/TabPluginDevice/GifPlayer$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->start()V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->DisplayNextFrame()V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
