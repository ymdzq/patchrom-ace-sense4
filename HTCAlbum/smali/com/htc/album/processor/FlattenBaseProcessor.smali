.class public abstract Lcom/htc/album/processor/FlattenBaseProcessor;
.super Lcom/htc/album/processor/BaseProcessor;
.source "FlattenBaseProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/processor/BaseProcessor",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLEAR_CACHE_BESIDES_IN_ONE_DAY:J = 0x15180L

.field public static final FOLDER_PATH:Ljava/lang/String; = "/mnt/sdcard/3DFlatten"

.field private static final KILL_CACHE_BESIDES_ONE_DAY:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MIN_STORAGE_LIMITE:I = 0x500000

.field static final MIN_STORAGE_SPACE:J = 0x500000L

.field public static final ROOT_FOLDERS:[Ljava/lang/String; = null

.field private static final TAG_FIND_CACHE:Ljava/lang/String; = null

.field private static final TAG_PROCESS_FILE:Ljava/lang/String; = null

.field static final TIME_CACHE_LIFE:J = 0x15180L

.field static final TIME_CLEAN_CACHE:J = 0x5dcL

.field static final TIME_CLEAN_CACHE_ALL:J = -0x1L

.field private static final TIME_OUT_IN_1_5_SEC:J = 0x5dcL


# instance fields
.field protected mConvertedInkBitmap:Landroid/graphics/Bitmap;

.field protected mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/processor/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

.field protected mSourceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[processSingleFile]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_PROCESS_FILE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[findFileFromCache]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_FIND_CACHE:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/3DFlatten"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/processor/FlattenBaseProcessor;->ROOT_FOLDERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/processor/BaseProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    iput-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mConvertedInkBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected clearCacheFiles()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/32 v5, 0x15180

    sub-long v11, v3, v5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "_data like ? AND date_modified < ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v18, "/mnt/sdcard/3DFlatten%"

    aput-object v18, v5, v6

    const/4 v6, 0x1

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const-string v6, "date_modified ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    const-wide/16 v13, 0x5dc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v7, v16

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    if-nez v3, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-lez v3, :cond_2

    sub-long v3, v7, v16

    cmp-long v3, v3, v13

    if-lez v3, :cond_2

    const-wide/32 v3, 0x500000

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v13, -0x1

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v3, v10

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v15, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_1

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected findFileFromCache(Landroid/app/Activity;Lcom/htc/album/processor/FileInfo;)Z
    .locals 13

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v11, p2, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_FIND_CACHE:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v2, v10

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p2, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v7, p2, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    if-eqz v7, :cond_5

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v7, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v6, 0x1

    :cond_5
    move v2, v6

    goto :goto_0
.end method

.method protected generateFilePath(Lcom/htc/album/processor/FileInfo;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    iget-boolean v3, p1, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    const-string v2, ""

    :try_start_0
    iget-object v3, p1, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, p1, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%s/%08X-%d.jpg"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/mnt/sdcard/3DFlatten"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p1, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p1, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, ""

    goto :goto_1
.end method

.method protected getFileInfo(Landroid/net/Uri;)Lcom/htc/album/processor/FileInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getFileInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/album/processor/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getFileInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/album/processor/FileInfo;
    .locals 23

    if-nez p1, :cond_0

    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_0
    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v17, -0x1

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v22

    const-string v3, "media"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_5

    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v3, 0x4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    and-int/lit8 v3, v13, 0x2

    if-eqz v3, :cond_6

    const/16 v20, 0x1

    :cond_1
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    if-nez v16, :cond_3

    if-eqz v14, :cond_4

    :cond_3
    if-nez v15, :cond_b

    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_data"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "mime_type"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string v6, "date_modified"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const-string v6, "_size"

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const-string v6, "favorite"

    aput-object v6, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    :cond_7
    const-string v3, "file"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    const-string v3, ".mpo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v15, "image/mpo"

    goto :goto_3

    :cond_8
    const-string v3, ".jps"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v15, "image/jps"

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/processor/FlattenBaseProcessor;->getParcelFileDescriptor(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    move-object/from16 v15, p2

    goto :goto_3

    :cond_b
    new-instance v19, Lcom/htc/album/processor/FileInfo;

    invoke-direct/range {v19 .. v19}, Lcom/htc/album/processor/FileInfo;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/htc/album/processor/FileInfo;->mSourceType:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/htc/album/processor/FileInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/album/processor/FileInfo;->mSourceUri:Landroid/net/Uri;

    move-object/from16 v0, v19

    iput-wide v11, v0, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    move-wide/from16 v0, v17

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/htc/album/processor/FileInfo;->isInked:Z

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/album/processor/FlattenBaseProcessor;->is3D(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/htc/album/processor/FileInfo;->is3D:Z

    if-nez v16, :cond_c

    if-eqz v14, :cond_d

    :cond_c
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/htc/album/processor/FileInfo;->is3D:Z

    if-nez v3, :cond_f

    if-nez v20, :cond_f

    :cond_d
    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->generateFilePath(Lcom/htc/album/processor/FileInfo;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_4

    :cond_f
    const/4 v3, 0x0

    goto :goto_5
.end method

.method protected getFileInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/processor/FileInfo;
    .locals 13

    const/4 v10, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v7

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    if-nez v4, :cond_1

    const-string v11, ".jps"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v4, "image/jps"

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x1000

    invoke-static {v11, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v11, 0x1

    iput-boolean v11, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v4, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    new-instance v7, Lcom/htc/album/processor/FileInfo;

    invoke-direct {v7}, Lcom/htc/album/processor/FileInfo;-><init>()V

    iput-object p1, v7, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    iput-object v4, v7, Lcom/htc/album/processor/FileInfo;->mSourceType:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v7, Lcom/htc/album/processor/FileInfo;->mSourceUri:Landroid/net/Uri;

    iput-wide v0, v7, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    iput-wide v5, v7, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    invoke-virtual {p0, v4}, Lcom/htc/album/processor/FlattenBaseProcessor;->is3D(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    :goto_2
    iput-boolean v10, v7, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    invoke-virtual {p0, v7}, Lcom/htc/album/processor/FlattenBaseProcessor;->generateFilePath(Lcom/htc/album/processor/FileInfo;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v11, ".mpo"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v4, "image/mpo"

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v10, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getFileInfo] Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/processor/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParcelFileDescriptor(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getParcelFileDescriptor] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected is3D(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected obtainResult()Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic obtainResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/processor/FlattenBaseProcessor;->obtainResult()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPreProcess()I
    .locals 2

    invoke-super {p0}, Lcom/htc/album/processor/BaseProcessor;->onPreProcess()I

    invoke-virtual {p0}, Lcom/htc/album/processor/FlattenBaseProcessor;->clearCacheFiles()V

    const-wide/32 v0, 0x500000

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onProcessing()I
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/processor/FileInfo;

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->findFileFromCache(Landroid/app/Activity;Lcom/htc/album/processor/FileInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->processSingleFile(Lcom/htc/album/processor/FileInfo;)I

    move-result v3

    :cond_1
    if-eqz v3, :cond_0

    :cond_2
    return v3
.end method

.method protected processSingleFile(Lcom/htc/album/processor/FileInfo;)I
    .locals 18

    const/16 v16, 0x6

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    if-eqz v1, :cond_1

    :cond_0
    move/from16 v1, v16

    :goto_0
    return v1

    :cond_1
    const-wide/32 v1, 0x500000

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/htc/album/processor/FileInfo;->isInked:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    if-nez v1, :cond_3

    new-instance v1, Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    new-instance v7, Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;-><init>(Lcom/htc/album/processor/FlattenBaseProcessor;)V

    invoke-virtual/range {v1 .. v7}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->setMergeInfo(Ljava/lang/String;JJLcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->asyncMerge()Z

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mConvertedInkBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mConvertedInkBitmap:Landroid/graphics/Bitmap;

    :cond_4
    :goto_2
    if-nez v8, :cond_a

    const/4 v1, 0x6

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/album/processor/FileInfo;->mSourceType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v1, "image/jps"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v9, 0x1

    :goto_3
    if-nez v9, :cond_8

    move/from16 v1, v16

    goto :goto_0

    :cond_6
    const-string v1, "image/mpo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v9, 0x2

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v9}, Lcom/htc/album/processor/ImageUtils;->decodeByScalado(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    :cond_9
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/album/processor/FileInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/album/processor/FileInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1, v9}, Lcom/htc/album/processor/ImageUtils;->decodeFileDescriptor(Landroid/os/ParcelFileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_b
    const/4 v14, 0x0

    :try_start_3
    new-instance v13, Ljava/io/File;

    const-string v1, "/mnt/sdcard/3DFlatten"

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_PROCESS_FILE:Ljava/lang/String;

    invoke-static {v12, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_PROCESS_FILE:Ljava/lang/String;

    invoke-static {v12, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {v8, v1, v2, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v8, 0x0

    const/16 v16, 0x0

    if-eqz v15, :cond_d

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_d
    move-object v14, v15

    :cond_e
    :goto_4
    if-nez v16, :cond_f

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->scanSingleFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    :cond_f
    move/from16 v1, v16

    goto/16 :goto_0

    :catch_1
    move-exception v11

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onProcessing] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v15

    goto :goto_4

    :catch_2
    move-exception v11

    :goto_5
    :try_start_6
    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onProcessing] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v14, :cond_e

    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v11

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onProcessing] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    :goto_6
    if-eqz v14, :cond_10

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_10
    :goto_7
    throw v1

    :catch_4
    move-exception v11

    sget-object v2, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onProcessing] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v14, v15

    goto :goto_6

    :catch_5
    move-exception v11

    move-object v14, v15

    goto :goto_5
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->release()V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iput-object v1, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    invoke-super {p0}, Lcom/htc/album/processor/BaseProcessor;->release()V

    return-void
.end method
