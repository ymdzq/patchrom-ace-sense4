.class Lcom/htc/album/helper/MenuManager$RotateThread;
.super Ljava/lang/Thread;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotateThread"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancel:Z

.field private mDegree:I

.field private mDialog:Lcom/htc/app/HtcProgressDialog;

.field private mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

.field private mPosition:I

.field private mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->this$0:Lcom/htc/album/helper/MenuManager;

    const-string v0, "Rotate_Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mCancel:Z

    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iput p5, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    iput p3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iput-object p7, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v0}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onCreate()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/MenuManager$RotateThread;->start()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/album/helper/MenuManager$RotateThread;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mCancel:Z

    return-void
.end method

.method public run()V
    .locals 8

    const-string v1, "MenuManager"

    const-string v2, "remove cache in filmstrip and grid view"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1, v2, v3}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateBegin(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1, v2, v3}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/htc/album/helper/MenuManager$RotateThread$1;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$1;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onResumeIBT()V

    :cond_3
    const/4 v7, 0x1

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->rotateImageBy(I)Z

    move-result v7

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v4

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZ)V

    new-instance v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->removeDMCCache(Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1, v2, v3}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    :cond_4
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    :cond_5
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :try_start_1
    const-string v1, "MenuManager"

    const-string v2, "rotate image fail"

    invoke-static {v1, v2, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1, v2, v3}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    :cond_6
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    :cond_7
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    :cond_8
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    :cond_9
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v1
.end method
