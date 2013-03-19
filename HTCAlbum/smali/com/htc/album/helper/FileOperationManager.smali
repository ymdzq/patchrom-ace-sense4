.class public Lcom/htc/album/helper/FileOperationManager;
.super Ljava/lang/Object;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/FileOperationManager$2;,
        Lcom/htc/album/helper/FileOperationManager$FileOperationTask;,
        Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;,
        Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static ENABLE_FILEOPERATION:Z = false

.field public static FILE_OP_MODULE_ENABLE_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileOperationManager"

.field private static final REMAIN_NEW_FOLDER_CREATE_SIZE:J = 0x100000L

.field private static final REMAIN_STORAGE_SIZE_FOR_FULL_SPACE_CHECK:J = 0x6400000L

.field public static final RESULT_FAILED:I = 0x68561

.field public static final RESULT_FAILED_CANCELED:I = 0x68565

.field public static final RESULT_FAILED_STORAGE_FULL:I = 0x68562

.field public static final RESULT_OK:I = 0x68560

.field private static mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private static mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

.field private static mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

.field private static mFragment:Landroid/app/Fragment;

.field private static mInstance:Lcom/htc/album/helper/FileOperationManager;

.field private static mInstanceReferenceCount:I


# instance fields
.field private mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

.field private mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

.field private mDataSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v1, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    sput-boolean v2, Lcom/htc/album/helper/FileOperationManager;->ENABLE_FILEOPERATION:Z

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    sput v1, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    sput-boolean v2, Lcom/htc/album/helper/FileOperationManager;->FILE_OP_MODULE_ENABLE_FLAG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    sget-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    return-void
.end method

.method static synthetic access$000()Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/helper/FileOperationManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/FileOperationManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static callFileOperationFolderSelector(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_1

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][callFileOperationFolderSelector] scene control is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][callFileOperationFolderSelector] fileOPPathList is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v3}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v2

    sget-object v3, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v3, p1}, Lcom/htc/album/helper/FileOperationManager;->setSourceFiles(Ljava/util/ArrayList;)V

    const/4 v1, -0x1

    sget-object v3, Lcom/htc/album/helper/FileOperationManager$2;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {v2}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x3e

    :goto_1
    invoke-static {v0, p1, p2, v1}, Lcom/htc/album/helper/MenuManager;->callFileOperationFolderSelector(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x3f

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static cancel()V
    .locals 2

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][cancel] +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->cancel(Z)Z

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->notifyWaitLock()V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    :cond_1
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    :cond_2
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][cancel] ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static destroyInstance()V
    .locals 3

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FileOperationManager][destroyInstance] Instance reference count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    sget v0, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    :cond_1
    return-void
.end method

.method public static doCopyMoveOperation(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/FileOperationManager;->setTargetFiles(Ljava/util/ArrayList;)V

    sget-object v1, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationManager;->fileOperationStart()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FileOperationManager"

    const-string v2, "[HTCAlbum][FileOperationManager][doFileOperationWithCreateNewFolder] newFolderName is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static init(Landroid/app/Fragment;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;)V
    .locals 2

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][init] initialize parameters."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p1, Lcom/htc/album/helper/FileOperationManager;->mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    sput-object p0, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public static instance(Landroid/app/Fragment;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;)Lcom/htc/album/helper/FileOperationManager;
    .locals 3

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FileOperationManager][instance] Instance reference count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/album/helper/FileOperationManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FileOperationManager;-><init>()V

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    :cond_1
    sget v0, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    invoke-static {p0, p1}, Lcom/htc/album/helper/FileOperationManager;->init(Landroid/app/Fragment;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;)V

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mInstance:Lcom/htc/album/helper/FileOperationManager;

    return-object v0
.end method

.method public static scanExternalStorage(Landroid/app/Activity;)V
    .locals 4

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public fileOperationStart()V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const v2, 0x68561

    const/4 v6, 0x0

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][fileOperationStart] create file operation task."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0, v2}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0, v2}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    sput-object v4, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    :cond_3
    new-instance v0, Lcom/htc/album/helper/DeleteManager;

    sget-object v1, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    new-instance v3, Lcom/htc/album/helper/FileOperationManager$1;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/FileOperationManager$1;-><init>(Lcom/htc/album/helper/FileOperationManager;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    const v1, 0x120001

    invoke-virtual {v0, v1, v4}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_5
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][fileOperationStart] source list is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0, v2}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-eq v0, v1, :cond_a

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][fileOperationStart] target list is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0, v2}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPHost:Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationBegin()V

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    invoke-virtual {v0, v7}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->cancel(Z)Z

    sput-object v4, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    :cond_b
    new-instance v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    sget-object v2, Lcom/htc/album/helper/FileOperationManager;->mFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;-><init>(Lcom/htc/album/helper/FileOperationManager;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    sput-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public getAlbumCollection()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method public getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    return-object v0
.end method

.method public getSourceFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isRunning()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FileOperationManager][destroyInstance] Instance reference count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/album/helper/FileOperationManager;->mInstanceReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    sput-object v3, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    :cond_3
    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    sput-object v3, Lcom/htc/album/helper/FileOperationManager;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    :cond_4
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->cancelDeleting()V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->release()V

    iput-object v3, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    :cond_5
    return-void
.end method

.method public setAlbumCollection(Lcom/htc/album/modules/collection/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    return-void
.end method

.method public setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager;->mCurrentProcessType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    return-void
.end method

.method public setSourceFiles(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][setSourceFiles] source list is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setStorageProblemState()V
    .locals 1

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/helper/FileOperationManager;->mFileOPTask:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #calls: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->setStorageProblemState()V
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$100(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)V

    :cond_0
    return-void
.end method

.method public setTargetFiles(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][setTargetFiles] target list is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
