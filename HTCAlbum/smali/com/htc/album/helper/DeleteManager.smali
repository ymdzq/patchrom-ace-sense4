.class public Lcom/htc/album/helper/DeleteManager;
.super Ljava/lang/Object;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/DeleteManager$DeleteTask;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;,
        Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_ALL:I = 0x120001

.field public static final DIALOG_DELETE_FILES:I = 0x120002

.field public static final DIALOG_DELETE_PROGRESS:I = 0x120000

.field public static final DIALOG_DELETE_SINGLE:I = 0x120003

.field private static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "key_message"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mWorkaroundCollection:Lcom/htc/album/modules/collection/Collection;


# instance fields
.field deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

.field deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

.field deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

.field private mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

.field private mDialogId:I

.field private mFragment:Landroid/app/Fragment;

.field private mIsFavoriteCollection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z

    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/DeleteManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/album/helper/DeleteManager;I)I
    .locals 0

    iput p1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/modules/collection/Collection;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/DeleteManager;->mWorkaroundCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/modules/collection/Collection;
    .locals 0

    sput-object p0, Lcom/htc/album/helper/DeleteManager;->mWorkaroundCollection:Lcom/htc/album/modules/collection/Collection;

    return-object p0
.end method

.method private getNewBurstBestPosition(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lt v3, v0, :cond_2

    const/4 v3, -0x1

    :cond_2
    return v3
.end method

.method private onDismissDeleteAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onDismissDeleteProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onDismissDeleteSingleDialog()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancelDeleteMedias()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    return-void
.end method

.method public checkDeleteBurstShot(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    const-string v11, "com.htc.HTCAlbum.BURST_SHOTS"

    iget-object v12, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v12}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot] collection is not a burst shot collection."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v12, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v8, v2, v11

    if-gtz v8, :cond_3

    move v9, v10

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot]image is null."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    if-nez v1, :cond_5

    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot]burstPhotoImageList is null."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getBestShotIndex()I

    move-result v0

    const/4 v11, -0x1

    if-ne v0, v11, :cond_6

    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot]Can\'t find best shot."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    if-le v8, v10, :cond_7

    move v9, v10

    goto :goto_0

    :cond_7
    if-ne v8, v10, :cond_8

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkExpand()Z

    move-result v9

    goto :goto_0

    :cond_8
    invoke-direct {p0, v6, p1}, Lcom/htc/album/helper/DeleteManager;->getNewBurstBestPosition(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;Ljava/util/ArrayList;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    if-nez v4, :cond_9

    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot]imageNewBest is null."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1, v4, v9}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkSetBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)Z

    move-result v9

    goto/16 :goto_0
.end method

.method public deleteAllMedias()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v1, 0x120001

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public deleteContinuousShot(Lcom/htc/album/modules/collection/Collection;)V
    .locals 2

    sput-object p1, Lcom/htc/album/helper/DeleteManager;->mWorkaroundCollection:Lcom/htc/album/modules/collection/Collection;

    const v0, 0x120001

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    return-void
.end method

.method public deleteMedias(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const v1, 0x120002

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    return-void
.end method

.method public deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 10

    const v9, 0x120003

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v2, ""

    move-object v3, p2

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_message"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "key_data"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    instance-of v4, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v4, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v4, v9, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public doDelete(ILandroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const-string v3, "key_data"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x120001
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDeleting()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-direct {v1, p0, p2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_PROGRESS"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-direct {v1, p0, p2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_ALL"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-direct {v1, p0, p2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_SINGLE"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDismissAllFragmentDialog()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteProgressDialog()V

    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteAllDialog()V

    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteSingleDialog()V

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteProgressDialog()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteAllDialog()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteSingleDialog()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[release] Do release now..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    if-eqz v1, :cond_5

    :try_start_2
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    :cond_5
    :goto_2
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DeleteManager][release]: can\'t dismiss dialog."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    throw v1

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DeleteManager][release]: can\'t dismiss dialog."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    goto :goto_1

    :catchall_1
    move-exception v1

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    throw v1

    :catch_2
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DeleteManager][release]: can\'t dismiss dialog."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    goto :goto_2

    :catchall_2
    move-exception v1

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    throw v1
.end method
