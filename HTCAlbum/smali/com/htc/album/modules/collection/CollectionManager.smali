.class public abstract Lcom/htc/album/modules/collection/CollectionManager;
.super Ljava/lang/Object;
.source "CollectionManager.java"

# interfaces
.implements Lcom/htc/album/helper/IFilterFolderBucketIds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/htc/album/modules/collection/Collection;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/album/helper/IFilterFolderBucketIds;"
    }
.end annotation


# static fields
.field protected static CANCEL_LOADING:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CollectionManager"

.field protected static SMART_COLLECTION_LIST:[Ljava/lang/String;

.field public static SOURCE_DEFAULT:I


# instance fields
.field private mEnableFilterFolderBucketIds:Z

.field private mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/album/modules/collection/CollectionManager;->CANCEL_LOADING:Z

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.htc.HTCAlbum.ALL_3DS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.htc.HTCAlbum.ALL_PHOTOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.htc.HTCAlbum.ALL_VIDEOS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.htc.HTCAlbum.BURST_SHOTS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.htc.HTCAlbum.SNAPBOOTH"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.htc.TMO.FAVORITES"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.htc.HTCAlbum.MY_FAVORITES"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.htc.HTCAlbum.MY_INKS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.htc.HTCAlbum.SCRIBBLES"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/CollectionManager;->SMART_COLLECTION_LIST:[Ljava/lang/String;

    const/16 v0, 0xff

    sput v0, Lcom/htc/album/modules/collection/CollectionManager;->SOURCE_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/CollectionManager;->mEnableFilterFolderBucketIds:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    return-void
.end method

.method private addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p4

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v0 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    return-void
.end method

.method public static getSmartCollectionList()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/modules/collection/CollectionManager;->SMART_COLLECTION_LIST:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected addItemToCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJJ)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/modules/collection/Collection;

    if-nez v4, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/album/modules/collection/CollectionManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move/from16 v5, p3

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    invoke-virtual/range {v4 .. v14}, Lcom/htc/album/modules/collection/Collection;->updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V

    return-void
.end method

.method protected abstract doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/modules/collection/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method

.method protected doLoadDataFromCursor(Landroid/content/Context;Ljava/util/HashMap;ILandroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;I",
            "Landroid/database/Cursor;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-boolean v2, Lcom/htc/album/modules/collection/CollectionManager;->CANCEL_LOADING:Z

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v2, 0x3

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x6

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x7

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    :cond_1
    const/16 v2, 0x10

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    :cond_2
    const/16 v2, 0xe

    move/from16 v0, p3

    if-eq v0, v2, :cond_3

    const/16 v2, 0xe0

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-gtz v2, :cond_5

    const/4 v2, 0x5

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    :cond_5
    const/4 v2, 0x4

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    const/16 v38, 0x1

    :goto_1
    if-eqz v38, :cond_6

    const-string v6, "com.htc.HTCAlbum.MY_FAVORITES"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    :cond_6
    const/16 v2, 0xe

    move/from16 v0, p3

    if-eq v0, v2, :cond_7

    const/16 v2, 0xe0

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    :cond_7
    const/16 v2, 0xe

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/CollectionManager;->isFilteredFolderBucketId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v6, "com.htc.HTCAlbum.ALL_PHOTOS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    :cond_8
    :goto_2
    const-string v6, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    goto/16 :goto_0

    :cond_9
    const/16 v38, 0x0

    goto :goto_1

    :cond_a
    const/16 v2, 0xe0

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    const-string v6, "com.htc.HTCAlbum.ALL_VIDEOS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    goto :goto_2

    :cond_b
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/CollectionManager;->isFilteredFolderBucketId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v6, "com.htc.HTCAlbum.ALL_PHOTOS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    :cond_c
    :goto_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileInCameraShots(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    const/16 v36, 0x0

    const/16 v34, 0x0

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportSnapbooth()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v33, :cond_16

    const-string v2, "booth"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v36, 0x1

    :cond_d
    :goto_4
    if-nez v36, :cond_e

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportPanorama()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v33, :cond_17

    const-string v2, "panor"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v34, 0x1

    :cond_e
    :goto_5
    if-eqz v36, :cond_18

    const-string v6, "com.htc.HTCAlbum.SNAPBOOTH"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    :cond_f
    :goto_6
    const/16 v39, 0x0

    const/16 v35, 0x0

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportPenPaint()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x4

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1a

    const/16 v39, 0x1

    :goto_7
    if-eqz v39, :cond_10

    const-string v6, "com.htc.HTCAlbum.MY_INKS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    :cond_10
    if-nez v33, :cond_1b

    invoke-static/range {v40 .. v40}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileInScribbles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v35, 0x1

    :goto_8
    if-eqz v35, :cond_11

    const-string v6, "com.htc.HTCAlbum.SCRIBBLES"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    :cond_11
    const/16 v37, 0x0

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->show3DVirtualFolder()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "image/jps"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "image/mpo"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "video/mp4-3d"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_12
    const/16 v37, 0x1

    :goto_9
    if-eqz v37, :cond_13

    const-string v6, "com.htc.HTCAlbum.ALL_3DS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    :cond_13
    if-nez v33, :cond_1d

    if-nez v35, :cond_1d

    invoke-static/range {v40 .. v40}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileInAllDownloads(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v32, 0x1

    :goto_a
    if-eqz v32, :cond_14

    const-string v6, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    :cond_14
    if-nez v33, :cond_0

    if-nez v32, :cond_0

    if-nez v35, :cond_0

    const-string v20, "com.htc.HTCAlbum.LOCAL_FOLDER"

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-object/from16 v18, p1

    move/from16 v19, p3

    move-object/from16 v23, v7

    move-wide/from16 v24, v8

    move-object/from16 v26, v10

    move/from16 v27, v11

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    invoke-virtual/range {v16 .. v31}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x10

    move/from16 v0, p3

    if-ne v0, v2, :cond_c

    const-string v6, "com.htc.HTCAlbum.ALL_VIDEOS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    goto/16 :goto_3

    :cond_16
    const/16 v36, 0x0

    goto/16 :goto_4

    :cond_17
    const/16 v34, 0x0

    goto/16 :goto_5

    :cond_18
    if-eqz v34, :cond_19

    const-string v6, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    goto/16 :goto_6

    :cond_19
    const-string v6, "com.htc.HTCAlbum.CAMERA_SHOTS"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJJ)V

    goto/16 :goto_6

    :cond_1a
    const/16 v39, 0x0

    goto/16 :goto_7

    :cond_1b
    const/16 v35, 0x0

    goto/16 :goto_8

    :cond_1c
    const/16 v37, 0x0

    goto/16 :goto_9

    :cond_1d
    const/16 v32, 0x0

    goto :goto_a

    :cond_1e
    return-void
.end method

.method protected doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;)",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/htc/album/modules/collection/CollectionManager;->SMART_COLLECTION_LIST:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/collection/Collection;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public enableFilter4FolderBucketIds(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/album/modules/collection/CollectionManager;->mEnableFilterFolderBucketIds:Z

    iget-object v0, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/CollectionManager;->mEnableFilterFolderBucketIds:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/collection/CollectionManager;->onPreLoadCollectioinList(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/collection/CollectionManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/collection/CollectionManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    and-int/lit8 v0, p2, 0xe

    if-eqz v0, :cond_2

    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/collection/CollectionManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    and-int/lit16 v0, p2, 0xe0

    if-eqz v0, :cond_3

    const/16 v3, 0xe0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/collection/CollectionManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/collection/CollectionManager;->onPostLoadCollectioinList(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/htc/album/modules/collection/CollectionManager;->doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    return-object v6
.end method

.method public getCollectionList(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    sget v0, Lcom/htc/album/modules/collection/CollectionManager;->SOURCE_DEFAULT:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/htc/album/modules/collection/CollectionManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getCursor(Landroid/content/ContentResolver;ILjava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p2, p3}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    sparse-switch p2, :sswitch_data_0

    :try_start_0
    const-string v1, "CollectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCursor] Unsupported source type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-static {p2, v0}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_1
    move-object v0, v6

    goto :goto_0

    :sswitch_1
    const-string v0, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-static {p2, v0}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    :sswitch_2
    sget-object v1, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/album/modules/collection/Collection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    :sswitch_3
    sget-object v1, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/album/modules/collection/Collection;->SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v0, "CollectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCursor] Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0xe0 -> :sswitch_3
    .end sparse-switch
.end method

.method public isFilteredFolderBucketId(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v3, "CollectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadCollectionFromSource] Error, context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", collectionList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v3, "CollectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadCollectionFromSource] query ++, source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/album/modules/collection/CollectionManager;->CANCEL_LOADING:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v12, v0, v1, v2}, Lcom/htc/album/modules/collection/CollectionManager;->getCursor(Landroid/content/ContentResolver;ILjava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v3, "CollectionManager"

    const-string v4, "[loadCollectionFromSource] null cursor"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p5

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcom/htc/album/modules/collection/CollectionManager;->doLoadDataFromCursor(Landroid/content/Context;Ljava/util/HashMap;ILandroid/database/Cursor;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v9, v3, v13

    const-string v3, "CollectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadCollectionFromSource] query --, total "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " collections, time used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string v3, "CollectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[localCollectionFromSource] Exception2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v7, 0x0

    throw v3
.end method

.method protected onPostLoadCollectioinList(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected onPreLoadCollectioinList(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public prepareFilter4FolderBucketIds(Landroid/content/Context;)V
    .locals 10

    iget-boolean v7, p0, Lcom/htc/album/modules/collection/CollectionManager;->mEnableFilterFolderBucketIds:Z

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getLocalFolderFilterCache(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v7, "CollectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][CollectionManager][prepareFilter4FolderBucketIds]1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_1
    if-le v4, v5, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    if-nez v3, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-nez v0, :cond_2

    iget-object v7, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v0, 0x1

    const-string v7, "CollectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][CollectionManager][prepareFilter4FolderBucketIds]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v7, "CollectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][CollectionManager][prepareFilter4FolderBucketIds]2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/modules/collection/CollectionManager;->mHashedFilter4HiddenBucketIds:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopLoadData()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/album/modules/collection/CollectionManager;->CANCEL_LOADING:Z

    return-void
.end method

.method public verifyFilterResult(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-le v2, v3, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CollectionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][CollectionManager][verifyFilterResult]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
