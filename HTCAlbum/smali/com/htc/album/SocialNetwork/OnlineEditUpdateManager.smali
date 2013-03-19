.class public Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;
.super Ljava/lang/Object;
.source "OnlineEditUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;,
        Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditUpdateConstants;,
        Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    }
.end annotation


# static fields
.field public static final TAG_HEIGHT_DEFAULT:I = 0x5

.field public static final TAG_WIDTH_DEFAULT:I = 0x5


# instance fields
.field private final EDIT_STATUS_CANCEL:I

.field private final EDIT_STATUS_READY:I

.field private final EDIT_STATUS_UPLOADING:I

.field private final LOG_TAG:Ljava/lang/String;

.field private mASyncTaskReqEditUpload:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

.field private mCurEditUploadStatus:I

.field private mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OnlineEditUpdateManager"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;

    iput v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->EDIT_STATUS_READY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->EDIT_STATUS_UPLOADING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->EDIT_STATUS_CANCEL:I

    iput v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mCurEditUploadStatus:I

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mASyncTaskReqEditUpload:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iput-object p1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    iput-object p3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    invoke-virtual {p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    return-object v0
.end method

.method private cancelASyncTask(Landroid/os/AsyncTask;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p1, 0x0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mASyncTaskReqEditUpload:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->cancelASyncTask(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mCurEditUploadStatus:I

    return-void
.end method

.method public runEditUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mASyncTaskReqEditUpload:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->cancelASyncTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;-><init>(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mASyncTaskReqEditUpload:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mASyncTaskReqEditUpload:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
