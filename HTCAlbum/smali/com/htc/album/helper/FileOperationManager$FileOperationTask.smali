.class Lcom/htc/album/helper/FileOperationManager$FileOperationTask;
.super Landroid/os/AsyncTask;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileOperationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final BURST_IMAGE_MAX_COUNT:I

.field private final DELAY_TIME_SHOW_DUPLICATE_FILE_WARNING_DIALOG:I

.field private final MSG_SHOW_DUPLICATE_FILE_WARNING_DIALOG:I

.field private mContext:Landroid/content/Context;

.field private mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

.field private mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mFileFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsApplyToAll:Z

.field private mIsConfirm:Z

.field private mIsRunning:Z

.field private mIsSkip:Z

.field private mIsStorageProblem:Z

.field private mIsUpdateProgressText:Z

.field private mLocker:Ljava/lang/Object;

.field private mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

.field private mRemoveCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

.field final synthetic this$0:Lcom/htc/album/helper/FileOperationManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/FileOperationManager;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->this$0:Lcom/htc/album/helper/FileOperationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_UNKNOWN:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileFrom:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileTo:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFragment:Landroid/app/Fragment;

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsUpdateProgressText:Z

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsRunning:Z

    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsStorageProblem:Z

    const v0, 0x22120

    iput v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->MSG_SHOW_DUPLICATE_FILE_WARNING_DIALOG:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->BURST_IMAGE_MAX_COUNT:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->DELAY_TIME_SHOW_DUPLICATE_FILE_WARNING_DIALOG:I

    new-instance v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$1;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$1;-><init>(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    iput-object p3, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileFrom:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileTo:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FileOperationDialogManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->setStorageProblemState()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z

    return p1
.end method

.method static synthetic access$802(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    return p1
.end method

.method static synthetic access$902(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    return p1
.end method

.method private addRemoveFileCacheItem(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 9

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    :cond_0
    new-instance v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;-><init>(Ljava/lang/String;JJJ)V

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private convertToTargetBurstList(Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/htc/album/helper/FileOperationHelper;->getBurstGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_4

    sget-boolean v14, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "FileOperationManager"

    const-string v15, "[HTCAlbum][FileOperationManager][convertToNewBurstList] can not generate unique burst group name."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    const-string v15, "FileOperationManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[HTCAlbum][FileOperationManager][convertToNewBurstList] failed path: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    return-object v3

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/htc/album/helper/FileOperationHelper;->createUniqueBurstGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v14, "FileOperationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[HTCAlbum][FileOperationManager][convertToNewBurstList] failed path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "/imag"

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int v14, v6, v12

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v7}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "_cover"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v1, 0x1

    const-string v14, "_cover"

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :cond_7
    const-string v14, "(\\d+)$"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_BURST"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8

    const-string v14, "_COVER.jpg"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v14, ".jpg"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method private copyFiles(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][copyFiles]"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const v23, 0x68560

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_0

    if-nez p2, :cond_2

    :cond_0
    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_1

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] copy failed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v23, 0x68561

    move/from16 v24, v23

    :goto_0
    return v24

    :cond_2
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sget-object v32, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    const v23, 0x68565

    move/from16 v24, v23

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    const/16 v17, 0x0

    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_6

    new-instance v11, Ljava/io/File;

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v31

    const-wide/32 v33, 0x100000

    add-long v21, v31, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v17

    if-eqz v17, :cond_4

    const v23, 0x68562

    move/from16 v24, v23

    goto :goto_0

    :cond_4
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/htc/album/helper/FileOperationHelper;->createNewFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_5

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] create new folder failed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const v23, 0x68561

    move/from16 v24, v23

    goto/16 :goto_0

    :cond_6
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_9

    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_8

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] the source data is null."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const v23, 0x68561

    move/from16 v24, v23

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isCancelled()Z

    move-result v31

    if-eqz v31, :cond_f

    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_a

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] Copy file failed, the task is cancelling."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v5, 0x0

    const v23, 0x68565

    :cond_b
    :goto_2
    if-eqz v5, :cond_d

    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_c

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] File Copied success."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const v23, 0x68560

    :cond_d
    sget-boolean v31, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v31, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v31, "FileOperationManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] process time = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sub-long v33, v9, v27

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    move/from16 v24, v23

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v31

    if-eqz v31, :cond_10

    const/16 v31, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_10
    invoke-static {v7}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    :cond_11
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-static {v7, v0}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_14

    const/16 v16, 0x1

    const/4 v14, 0x1

    :cond_12
    :goto_3
    if-eqz v14, :cond_17

    const v6, 0x68560

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v31

    move/from16 v3, v16

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->doBurstImageOperation(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v6

    const v31, 0x68560

    move/from16 v0, v31

    if-eq v6, v0, :cond_7

    const v31, 0x68565

    move/from16 v0, v31

    if-ne v6, v0, :cond_16

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    move/from16 v31, v0

    if-eqz v31, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    move/from16 v31, v0

    if-nez v31, :cond_13

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    :cond_13
    const/16 v31, 0x63

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    :cond_14
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-static {v7, v0}, Lcom/htc/album/helper/FileOperationHelper;->isOldBurstImage(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_12

    const/4 v14, 0x1

    goto :goto_3

    :cond_15
    move/from16 v23, v6

    goto/16 :goto_2

    :cond_16
    const/4 v5, 0x0

    move/from16 v23, v6

    goto/16 :goto_2

    :cond_17
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    move/from16 v31, v0

    if-nez v31, :cond_18

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->waitForWarningDialogComplete(Ljava/lang/String;)V

    :cond_18
    const/4 v15, 0x1

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z

    move/from16 v31, v0

    if-nez v31, :cond_1b

    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_1a

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] user cancelled."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v5, 0x0

    const v23, 0x68565

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1d

    if-eqz v15, :cond_1d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    move/from16 v31, v0

    if-nez v31, :cond_1c

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    :cond_1c
    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    :cond_1d
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v31

    const-wide/32 v33, 0x6400000

    add-long v21, v31, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v17

    if-eqz v17, :cond_1e

    if-nez v15, :cond_1e

    const v23, 0x68562

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_1e
    if-eqz p2, :cond_21

    if-eqz v19, :cond_21

    if-eqz v15, :cond_1f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1f
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationHelper;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v31

    if-nez v31, :cond_23

    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_20

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] Copy file failed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "FileOperationManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] failed in source: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "FileOperationManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] failed in target: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v5, 0x0

    const v23, 0x68561

    goto/16 :goto_2

    :cond_21
    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_22

    const-string v31, "FileOperationManager"

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] Copy file failed, unknown error."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v5, 0x0

    const v23, 0x68561

    goto/16 :goto_2

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->insertDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_25

    const-string v18, "insert DB failed."

    const/4 v5, 0x0

    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_24

    const-string v31, "FileOperationManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[HTCAlbum][FileOperationManager][FileOperationTask][copyFiles] "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const v23, 0x68561

    goto/16 :goto_2

    :cond_25
    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1
.end method

.method private doBurstImageOperation(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 21

    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_0

    const-string v17, "FileOperationManager"

    const-string v18, "[HTCAlbum][FileOperationManager][doBurstImageOperation]"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v13, 0x68560

    invoke-static/range {p2 .. p2}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->getBurstImageList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_2

    :cond_1
    const v13, 0x68561

    move v14, v13

    :goto_0
    return v14

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v15, v10, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->convertToTargetBurstList(Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_5

    :cond_3
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_4

    const-string v17, "FileOperationManager"

    const-string v18, "[HTCAlbum][FileOperationManager][doBurstImageOperation] problem with convert to target burst list."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const v13, 0x68561

    move v14, v13

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->getBurstImageSize(Ljava/util/ArrayList;)J

    move-result-wide v17

    const-wide/32 v19, 0x6400000

    add-long v11, v17, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_6

    const v13, 0x68562

    move v14, v13

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    if-eqz p4, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/htc/album/helper/FileOperationHelper;->getBurstGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/htc/album/helper/FileOperationHelper;->isBurstGroupExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->waitForWarningDialogComplete(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_8

    const-string v17, "FileOperationManager"

    const-string v18, "[HTCAlbum][FileOperationManager][FileOperationTask][doBurstImageOperation] user cancelled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const v13, 0x68565

    move v14, v13

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const v13, 0x68565

    move v14, v13

    goto :goto_0

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_BURST0001_COVER.jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->getBurstImageList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->deleteBurstShotImages(Ljava/util/ArrayList;)V

    :cond_b
    if-nez v7, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->getExistsBurstChildPath(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isContinueToReplaceExpandedBurst(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_c

    const-string v17, "FileOperationManager"

    const-string v18, "[HTCAlbum][FileOperationManager][doBurstImageOperation] copy burst images task cancelled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const v13, 0x68565

    move v14, v13

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->copyBurstImages(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)I

    move-result v13

    move v14, v13

    goto/16 :goto_0
.end method

.method private getBurstImageList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-object v8

    :cond_0
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    invoke-direct {v3, p1, v0, p2}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "FileOperationManager"

    const-string v9, "[HTCAlbum][FileOperationManager][getBurstImageList] get source burst image list failed."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x0

    move-object v8, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    invoke-virtual {v2, v5}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->release()V

    const/4 v2, 0x0

    move-object v8, v6

    goto :goto_0
.end method

.method private getBurstImageSize(Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    return-wide v3
.end method

.method private getExistsBurstChildPath(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    :cond_0
    const/4 v1, 0x0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTotalDataCount(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0, v5}, Lcom/htc/album/helper/FileOperationHelper;->isOldBurstImage(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    add-int/lit8 v2, v2, 0x62

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method private initDuplicateFileWarningDialog()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    const-string v1, ""

    new-instance v2, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;-><init>(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationDialogManager;->createDuplicateFileWarningDialog(Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-void
.end method

.method private initProgressBar(Landroid/app/Activity;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v4}, Lcom/htc/album/helper/GalleryProgressDialog;->dismiss()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    :cond_0
    new-instance v4, Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-direct {v4, p1}, Lcom/htc/album/helper/GalleryProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->this$0:Lcom/htc/album/helper/FileOperationManager;

    #getter for: Lcom/htc/album/helper/FileOperationManager;->mDataTargetList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/album/helper/FileOperationManager;->access$400(Lcom/htc/album/helper/FileOperationManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->this$0:Lcom/htc/album/helper/FileOperationManager;

    #getter for: Lcom/htc/album/helper/FileOperationManager;->mDataSourceList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/album/helper/FileOperationManager;->access$500(Lcom/htc/album/helper/FileOperationManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v4, Lcom/htc/album/helper/FileOperationManager$2;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {p2}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v4}, Lcom/htc/album/helper/GalleryProgressDialog;->initialProgresDialog()V

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v4, v1}, Lcom/htc/album/helper/GalleryProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v4, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setMax(I)V

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v4, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setGeneralMaxCount(I)V

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v4, v7}, Lcom/htc/album/helper/GalleryProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v4, v7}, Lcom/htc/album/helper/GalleryProgressDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    new-instance v5, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$2;

    invoke-direct {v5, p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$2;-><init>(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)V

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/GalleryProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    const v5, 0x7f0a018d

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const v5, 0x7f0a0186

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/GalleryProgressDialog;->setTitle(I)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    const v5, 0x7f0a018e

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const v5, 0x7f0a0185

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/GalleryProgressDialog;->setTitle(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isContinueToReplaceExpandedBurst(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->waitForWarningDialogComplete(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FileOperationManager"

    const-string v3, "[HTCAlbum][FileOperationManager][FileOperationTask][isContinueToReplaceExpandedBurst] user cancelled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v0

    :goto_0
    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isStorageFull(Ljava/lang/String;J)Z
    .locals 8

    const-wide/16 v6, 0x400

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5, p2, p3}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithPathAndSize(Ljava/lang/String;JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is full..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-long v4, p2, v6

    div-long v0, v4, v6

    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const-wide/16 v0, 0x1

    :cond_1
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "FileOperationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FileOperationManager][FileOperationTask][isStorageFull] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FileOperationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FileOperationManager][FileOperationTask][isStorageFull] storage free space is smaller than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MB."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0
.end method

.method private moveFiles(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_0

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][moveFiles]"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v22, 0x68560

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-eqz v30, :cond_1

    if-nez p2, :cond_3

    :cond_1
    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_2

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] move failed."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x0

    const v22, 0x68561

    move/from16 v23, v22

    :goto_0
    return v23

    :cond_3
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    const v22, 0x68565

    move/from16 v23, v22

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_7

    new-instance v11, Ljava/io/File;

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v30

    const-wide/32 v32, 0x100000

    add-long v20, v30, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v16

    if-eqz v16, :cond_5

    const v22, 0x68562

    const/4 v5, 0x0

    move/from16 v23, v22

    goto :goto_0

    :cond_5
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/htc/album/helper/FileOperationHelper;->createNewFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_6

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] create new folder failed."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const v22, 0x68561

    move/from16 v23, v22

    goto/16 :goto_0

    :cond_7
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_a

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_9

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] The source file is null."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    const/4 v5, 0x0

    const v22, 0x68561

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    move/from16 v23, v22

    goto/16 :goto_0

    :cond_a
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v30

    if-eqz v30, :cond_b

    const/16 v30, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_b
    invoke-static {v7}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v30

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    throw v30

    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isCancelled()Z

    move-result v30

    if-eqz v30, :cond_12

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_d

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] Move file failed, the task is cancelling."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    const/4 v5, 0x0

    const v22, 0x68565

    :cond_e
    :goto_2
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    if-eqz v5, :cond_10

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_f

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] move success."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const v22, 0x68560

    :cond_10
    sget-boolean v30, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v30, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v30, "FileOperationManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] process time = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v9, v26

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move/from16 v23, v22

    goto/16 :goto_0

    :cond_12
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v30, 0x1

    :try_start_3
    move/from16 v0, v30

    invoke-static {v7, v0}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_15

    const/4 v15, 0x1

    const/4 v14, 0x1

    :cond_13
    :goto_3
    if-eqz v14, :cond_18

    const v6, 0x68560

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v30

    invoke-direct {v0, v7, v1, v2, v15}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->doBurstImageOperation(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v6

    const v30, 0x68560

    move/from16 v0, v30

    if-eq v6, v0, :cond_8

    const v30, 0x68565

    move/from16 v0, v30

    if-ne v6, v0, :cond_17

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    move/from16 v30, v0

    if-eqz v30, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    move/from16 v30, v0

    if-nez v30, :cond_14

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    :cond_14
    const/16 v30, 0x63

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    :cond_15
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-static {v7, v0}, Lcom/htc/album/helper/FileOperationHelper;->isOldBurstImage(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_13

    const/4 v14, 0x1

    goto :goto_3

    :cond_16
    move/from16 v22, v6

    goto/16 :goto_2

    :cond_17
    const/4 v5, 0x0

    move/from16 v22, v6

    goto/16 :goto_2

    :cond_18
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    move/from16 v30, v0

    if-nez v30, :cond_19

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->waitForWarningDialogComplete(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z

    move/from16 v30, v0

    if-nez v30, :cond_1b

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_1a

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] user cancelled."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v5, 0x0

    const v22, 0x68565

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z

    move/from16 v30, v0

    if-nez v30, :cond_1c

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z

    :cond_1c
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    goto/16 :goto_1

    :cond_1d
    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_1e

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] Target file exist, try to copy it."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationHelper;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v30

    if-nez v30, :cond_22

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_1f

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] move/copy file failed."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v5, 0x0

    const v22, 0x68561

    :cond_20
    :goto_4
    if-nez v5, :cond_28

    const-string v17, "update DB failed."

    const/4 v5, 0x0

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_21

    const-string v30, "FileOperationManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const v22, 0x68561

    goto/16 :goto_2

    :cond_22
    sget-boolean v30, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v30, :cond_23

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] move/copy file success, try to delete original file."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->insertDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_20

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_20

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] delete original file failed."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_24
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v30

    const-wide/32 v32, 0x6400000

    add-long v20, v30, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v16

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnDifferenceStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_25

    if-eqz v16, :cond_25

    const/4 v5, 0x0

    const v22, 0x68562

    goto/16 :goto_2

    :cond_25
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationHelper;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v30

    if-nez v30, :cond_27

    sget-boolean v30, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v30, :cond_26

    const-string v30, "FileOperationManager"

    const-string v31, "[HTCAlbum][FileOperationManager][FileOperationTask][moveFiles] Move file failed."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v5, 0x0

    const v22, 0x68561

    goto/16 :goto_2

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    goto/16 :goto_4

    :cond_28
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private sendMessage(ILjava/lang/Object;J)V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setStorageProblemState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsStorageProblem:Z

    return-void
.end method

.method private startRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Lcom/htc/album/helper/RemoveFileCacheTask;

    invoke-direct {v0, p1, p2}, Lcom/htc/album/helper/RemoveFileCacheTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/htc/album/helper/RemoveFileCacheTask;->start()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/RemoveFileCacheTask;->postTask(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateHiddenAlbumList(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "local"

    invoke-static {v0, v1, v2, v4, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_2

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][FileOperationTask][updateHiddenAlbumList] there is no any hidden album."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setBucketId(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setDisplayName(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "local"

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    invoke-static {v3}, Lcom/htc/album/helper/UserProfilingLog;->logStorageContent(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private waitForWarningDialogComplete(Ljava/lang/String;)V
    .locals 4

    const v1, 0x22120

    const-wide/16 v2, 0x64

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->sendMessage(ILjava/lang/Object;J)V

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public copyBurstImages(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v26, :cond_0

    const-string v26, "FileOperationManager"

    const-string v27, "[HTCAlbum][FileOperationManager][copyBurstImages]"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v18, 0x68560

    const/4 v6, 0x0

    const/16 v5, 0x32

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_3

    :cond_1
    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v26, :cond_2

    const-string v26, "FileOperationManager"

    const-string v27, "[HTCAlbum][FileOperationManager][copyBurstImages] problem with the input parameters."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const v18, 0x68561

    move/from16 v19, v18

    :goto_0
    return v19

    :cond_3
    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_9

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v26, :cond_4

    const-string v26, "FileOperationManager"

    const-string v27, "[HTCAlbum][FileOperationManager][copyBurstImages] copy burst images task cancelled."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v13, 0x0

    const v18, 0x68565

    :cond_5
    :goto_2
    move/from16 v0, v25

    if-ge v0, v5, :cond_6

    sub-int v26, v5, v25

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    move/from16 v25, v5

    :cond_6
    if-nez v13, :cond_f

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v26, :cond_7

    const-string v26, "FileOperationManager"

    const-string v27, "[HTCAlbum][FileOperationManager][copyBurstImages] copy burst images not complete."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/32 v28, 0x100000

    add-long v16, v26, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isStorageFull(Ljava/lang/String;J)Z

    move-result v14

    if-eqz v14, :cond_b

    const v18, 0x68562

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v23

    invoke-static {v0, v8}, Lcom/htc/album/helper/FileOperationHelper;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v26

    if-nez v26, :cond_d

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v26, :cond_c

    const-string v26, "FileOperationManager"

    const-string v27, "[HTCAlbum][FileOperationManager][copyBurstImages] copy burst images failed."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v13, 0x0

    const v18, 0x68561

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v9, v11, 0x2

    if-nez v9, :cond_e

    move/from16 v0, v25

    if-gt v0, v5, :cond_e

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    add-int/lit8 v25, v25, 0x1

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_12

    if-eqz p3, :cond_14

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/io/File;

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_16

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v26, :cond_11

    const-string v26, "FileOperationManager"

    const-string v27, "[HTCAlbum][FileOperationManager][copyBurstImages] update data path to database failed."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const v18, 0x68561

    :cond_12
    :goto_5
    const/16 v26, 0x63

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    rsub-int/lit8 v26, v25, 0x63

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    :cond_13
    move/from16 v19, v18

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/io/File;

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->insertDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_16

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v26, :cond_15

    const-string v26, "FileOperationManager"

    const-string v27, "[HTCAlbum][FileOperationManager][copyBurstImages] insert data path to database failed."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const v18, 0x68561

    goto :goto_5

    :cond_16
    rem-int/lit8 v9, v11, 0x2

    sub-int v26, v15, v11

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_17

    const/16 v26, 0x63

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_17

    if-nez v9, :cond_17

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateProgress(IZ)V

    add-int/lit8 v25, v25, 0x1

    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4
.end method

.method public deleteBurstShotImages(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->deleteDataFromDB(Landroid/content/Context;Ljava/util/ArrayList;)Z

    return-void
.end method

.method public deleteDataFromDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, " _data like  ?"

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, " _data like  ?"

    invoke-static {p1, v3, v2}, Lcom/htc/album/helper/MediaProviderHelper;->deleteData(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteDataFromDB(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_data"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " in ( ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_0

    const-string v5, ", ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v2, v5

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v2}, Lcom/htc/album/helper/MediaProviderHelper;->deleteData(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "FileOperationManager"

    const-string v8, "[HTCAlbum][FileOperationManager][FileOperationTask][doInBackground] +++"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v9, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsRunning:Z

    const/4 v4, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileFrom:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->getTotalDataCount(Ljava/util/ArrayList;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/helper/GalleryProgressDialog;->setExpandMaxCount(I)V

    :cond_1
    iget-object v7, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileTo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v9, :cond_3

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "FileOperationManager"

    const-string v8, "[HTCAlbum][FileOperationManager][FileOperationTask][doInBackground] not support multiple target yet."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const v4, 0x68561

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_3
    iget-object v7, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileTo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_9

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "FileOperationManager"

    const-string v8, "[HTCAlbum][FileOperationManager][FileOperationTask][doInBackground] task canceled"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const v7, 0x68561

    if-ne v4, v7, :cond_6

    sget-object v7, Lcom/htc/album/helper/FileOperationManager$2;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v8}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "FileOperationManager"

    const-string v8, "[HTCAlbum][FileOperationManager][FileOperationTask] unknown task type."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const v4, 0x68561

    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v7, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "FileOperationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][FileOperationManager][FileOperationTask][doInBackground] process time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v0, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "FileOperationManager"

    const-string v8, "[HTCAlbum][FileOperationManager][FileOperationTask][doInBackground] ---"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_9
    sget-object v7, Lcom/htc/album/helper/FileOperationManager$2;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v8}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "FileOperationManager"

    const-string v8, "[HTCAlbum][FileOperationManager][FileOperationTask] unknown task type."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const v4, 0x68561

    goto/16 :goto_1

    :pswitch_0
    iget-object v7, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileFrom:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->moveFiles(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1
    iget-object v7, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileFrom:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->copyFiles(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    iget-object v9, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileFrom:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileTo:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v9, v7, v8}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->renameFolderContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hideAllDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v0}, Lcom/htc/album/helper/GalleryProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v0}, Lcom/htc/album/helper/GalleryProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    :cond_1
    return-void
.end method

.method public insertDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 39

    const/16 v24, 0x0

    const/16 v23, 0x0

    const-string v37, " _data like  ?"

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v2, 0x0

    aput-object p2, v38, v2

    const/16 v36, 0x0

    const/16 v26, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/htc/album/helper/FileOperationHelper;->isImagePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v23, 0x1

    const/4 v2, 0x0

    const-string v3, " _data like  ?"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v2, v3, v1, v12}, Lcom/htc/album/helper/MediaProviderHelper;->getImageCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    :goto_0
    if-eqz v26, :cond_0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FileOperationManager"

    const-string v3, "[HTCAlbum][FileOperationManager][FileOperationTask][updateDataPathToDB] update data to database failed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v24, 0x0

    move/from16 v25, v24

    :goto_1
    return v25

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/htc/album/helper/FileOperationHelper;->isVideoPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v23, 0x0

    const/4 v2, 0x0

    const-string v3, " _data like  ?"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v2, v3, v1, v12}, Lcom/htc/album/helper/MediaProviderHelper;->getVideoCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const-string v3, " _data like  ?"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v2, v3, v1, v12}, Lcom/htc/album/helper/MediaProviderHelper;->getImageCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_4

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x0

    const-string v3, " _data like  ?"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v2, v3, v1, v12}, Lcom/htc/album/helper/MediaProviderHelper;->getVideoCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    const/16 v23, 0x0

    goto :goto_0

    :cond_5
    const/16 v23, 0x1

    goto :goto_0

    :cond_6
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz v23, :cond_13

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v29, 0x0

    const-string v2, "datetaken"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_7

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_7
    const-string v2, "date_modified"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_8

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_8
    const-string v2, "latitude"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_9

    invoke-static/range {v27 .. v27}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    :cond_9
    const-string v2, "longitude"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_a

    invoke-static/range {v27 .. v27}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v34

    :cond_a
    const-string v2, "orientation"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_b

    invoke-static/range {v27 .. v27}, Lcom/htc/album/helper/FileOperationHelper;->convertStringToInt(Ljava/lang/String;)I

    move-result v8

    :cond_b
    const-string v2, "mime_type"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "favorite"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_c

    invoke-static/range {v27 .. v27}, Lcom/htc/album/helper/FileOperationHelper;->convertStringToInt(Ljava/lang/String;)I

    move-result v29

    :cond_c
    new-instance v10, Landroid/location/Location;

    const-string v2, "new"

    invoke-direct {v10, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    move-wide/from16 v0, v34

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    and-int/lit8 v2, v29, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    const/16 v31, 0x1

    :goto_2
    const/16 v36, 0x0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    if-eqz p4, :cond_12

    if-eqz v31, :cond_11

    or-int/lit8 v29, v29, 0x1

    :goto_3
    const-string v2, "favorite"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v11}, Lcom/htc/album/helper/MediaProviderHelper;->insertImage(Landroid/content/Context;Ljava/lang/String;JJILjava/lang/String;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v36

    if-eqz v36, :cond_d

    const/16 v24, 0x1

    :cond_d
    :goto_4
    if-eqz v36, :cond_e

    const/16 v24, 0x1

    :cond_e
    if-eqz v26, :cond_f

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    const/16 v26, 0x0

    :cond_f
    move/from16 v25, v24

    goto/16 :goto_1

    :cond_10
    const/16 v31, 0x0

    goto :goto_2

    :cond_11
    and-int/lit8 v29, v29, -0x2

    goto :goto_3

    :cond_12
    and-int/lit8 v29, v29, -0x2

    goto :goto_3

    :cond_13
    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v29, 0x0

    :try_start_1
    const-string v2, "datetaken"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_14

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_14
    const-string v2, "date_modified"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_15

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_15
    const-string v2, "latitude"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_16

    invoke-static/range {v27 .. v27}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    :cond_16
    const-string v2, "longitude"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_17

    invoke-static/range {v27 .. v27}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v34

    :cond_17
    const-string v2, "duration"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_18

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    :cond_18
    const-string v2, "mime_type"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "favorite"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_19

    invoke-static/range {v27 .. v27}, Lcom/htc/album/helper/FileOperationHelper;->convertStringToInt(Ljava/lang/String;)I

    move-result v29

    :cond_19
    new-instance v10, Landroid/location/Location;

    const-string v2, "new"

    invoke-direct {v10, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    move-wide/from16 v0, v34

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    and-int/lit8 v2, v29, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    const/16 v31, 0x1

    :goto_5
    if-eqz p4, :cond_1c

    if-eqz v31, :cond_1b

    or-int/lit8 v29, v29, 0x1

    :goto_6
    const/16 v36, 0x0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "favorite"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    invoke-static/range {v12 .. v22}, Lcom/htc/album/helper/MediaProviderHelper;->insertVideo(Landroid/content/Context;Ljava/lang/String;JJJLjava/lang/String;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v36

    goto/16 :goto_4

    :cond_1a
    const/16 v31, 0x0

    goto :goto_5

    :cond_1b
    and-int/lit8 v29, v29, -0x2

    goto :goto_6

    :cond_1c
    and-int/lit8 v29, v29, -0x2

    goto :goto_6

    :catch_0
    move-exception v28

    const-string v2, "FileOperationManager"

    const-string v3, "[HTCAlbum][FileOperationManager][FileOperationTask][insertDataToDB] insert data to database failed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    const/16 v36, 0x0

    goto/16 :goto_4
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsRunning:Z

    return v0
.end method

.method public notifyWaitLock()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCancelled()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][FileOperationTask][onCancelled]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsRunning:Z

    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->hideAllDialogs()V

    iget-boolean v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsStorageProblem:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsStorageProblem:Z

    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->access$000()Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    const v1, 0x68561

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->startRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->access$000()Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    const v1, 0x68565

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][FileOperationTask][onPostExecute]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsRunning:Z

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->hideAllDialogs()V

    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->access$000()Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mRemoveCacheList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->startRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][FileOperationTask][onPreExecute]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsRunning:Z

    iput-boolean v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsStorageProblem:Z

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileFrom:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileTo:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->cancel(Z)Z

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/htc/album/helper/FileOperationManager$2;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->initDuplicateFileWarningDialog()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mTaskType:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->initProgressBar(Landroid/app/Activity;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v0}, Lcom/htc/album/helper/GalleryProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFileTo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    invoke-virtual {v0}, Lcom/htc/album/helper/GalleryProgressDialog;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][FileOperationTask][onProgressUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsUpdateProgressText:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/GalleryProgressDialog;->incrementProgressNumberBy(I)V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/GalleryProgressDialog;->incrementProgressPercentBy(I)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mProgressDialog:Lcom/htc/album/helper/GalleryProgressDialog;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/GalleryProgressDialog;->incrementProgressPercentBy(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public renameFolderContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 38

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v28, 0x68560

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const v28, 0x68561

    move/from16 v29, v28

    :goto_0
    return v29

    :cond_2
    const/4 v10, 0x0

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents]1 rename folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const v28, 0x68561

    move/from16 v29, v28

    goto :goto_0

    :catch_0
    move-exception v13

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents]2 rename folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FileOperationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents]2 "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const v28, 0x68561

    move/from16 v29, v28

    goto :goto_0

    :cond_4
    const-string v3, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_5
    const-string v35, " _data like ?"

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v37, "%"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v36, v3

    const/4 v14, 0x0

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v3, v1, v2, v4}, Lcom/htc/album/helper/MediaProviderHelper;->getFileCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v12, 0x0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v16, 0x0

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents] rename total files."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents] rename folder cancelled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v10, 0x0

    const v28, 0x68565

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->updateHiddenAlbumList(Ljava/util/HashMap;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v10, 0x1

    :goto_3
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_9
    if-eqz v10, :cond_a

    const v28, 0x68560

    :cond_a
    move/from16 v29, v28

    goto/16 :goto_0

    :cond_b
    :try_start_2
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_d

    :cond_c
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v13

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents]3 rename folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FileOperationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents]3 "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    const v28, 0x68561

    const/4 v10, 0x0

    goto :goto_3

    :cond_d
    :try_start_3
    invoke-static/range {v33 .. v33}, Lcom/htc/album/helper/FileOperationHelper;->convertStringToInt(Ljava/lang/String;)I

    move-result v19

    const-string v3, "_data"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "/"

    invoke-virtual {v15, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_f
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-wide/16 v6, 0x0

    const-string v3, "date_modified"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_11
    const-wide/16 v8, 0x0

    const-string v3, "datetaken"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->addRemoveFileCacheItem(Landroid/content/Context;Ljava/lang/String;JJ)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-wide/16 v22, 0x0

    invoke-static/range {v24 .. v24}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/4 v3, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_data"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bucket_display_name"

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bucket_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/MediaProviderHelper;->updateData(Landroid/content/Context;Landroid/content/ContentValues;I)I

    move-result v32

    const/4 v3, 0x1

    move/from16 v0, v32

    if-ge v0, v3, :cond_c

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_13

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][renameFolderContents] update database failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const v28, 0x68561

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_4
.end method

.method public updateDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 26

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v24, " _data like  ?"

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    aput-object p2, v25, v3

    const/4 v13, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/htc/album/helper/FileOperationHelper;->isImagePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const-string v4, " _data like  ?"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v3, v4, v1, v5}, Lcom/htc/album/helper/MediaProviderHelper;->getImageCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :goto_0
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    :cond_0
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][updateDataPathToDB] update data to database failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v11, 0x0

    move v12, v11

    :goto_1
    return v12

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/htc/album/helper/FileOperationHelper;->isVideoPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v4, " _data like  ?"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v3, v4, v1, v5}, Lcom/htc/album/helper/MediaProviderHelper;->getVideoCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const-string v4, " _data like  ?"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v3, v4, v1, v5}, Lcom/htc/album/helper/MediaProviderHelper;->getImageCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x0

    const-string v4, " _data like  ?"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v3, v4, v1, v5}, Lcom/htc/album/helper/MediaProviderHelper;->getVideoCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    const/4 v10, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static/range {p3 .. p3}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {p3 .. p3}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p3 .. p3}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v19, -0x1

    if-eqz v14, :cond_7

    invoke-static {v14}, Lcom/htc/album/helper/FileOperationHelper;->convertStringToInt(Ljava/lang/String;)I

    move-result v19

    :cond_7
    const-string v3, "date_modified"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v8, -0x1

    if-eqz v14, :cond_8

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_8
    const-string v3, "datetaken"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v6, -0x1

    if-eqz v14, :cond_9

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_9
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "_data"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bucket_display_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v3 .. v9}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->addRemoveFileCacheItem(Landroid/content/Context;Ljava/lang/String;JJ)V

    const-string v3, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    :cond_a
    if-eqz v10, :cond_d

    const-string v3, "bucket_id"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/MediaProviderHelper;->updateData(Landroid/content/Context;Landroid/content/ContentValues;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    if-lez v22, :cond_b

    const/4 v11, 0x1

    :cond_b
    :goto_3
    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_c
    move v12, v11

    goto/16 :goto_1

    :cond_d
    :try_start_1
    const-string v3, "bucket_id"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v15

    const-string v3, "FileOperationManager"

    const-string v4, "[HTCAlbum][FileOperationManager][FileOperationTask][updateDataPathToDB] update data to database failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_3
.end method

.method public updateProgress(IZ)V
    .locals 3

    sget-boolean v0, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FileOperationManager"

    const-string v1, "[HTCAlbum][FileOperationManager][FileOperationTask][update]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsUpdateProgressText:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
