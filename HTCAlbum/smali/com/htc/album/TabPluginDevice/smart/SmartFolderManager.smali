.class public Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;
.super Lcom/htc/album/modules/collection/CollectionManager;
.source "SmartFolderManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/collection/CollectionManager",
        "<",
        "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONUTS_PER_EVENT:I = 0x64

.field public static final EVENT_NO_LIMITS:I = -0x1

.field public static final KEY_EVENT_LIMITS:Ljava/lang/String; = "key_event_limits"

.field public static final KEY_LOAD_EVENTS:Ljava/lang/String; = "key_load_events"

.field public static final KEY_LOAD_EVENTS_ONLY:Ljava/lang/String; = "key_load_events_only"

.field public static final KEY_NO_RES_DISPLAYNAME:Ljava/lang/String; = "key_no_res_displayname"

.field public static final KEY_QUERY_COMPLETED:Ljava/lang/String; = "key_query_completed"

.field public static final LOG_TAG:Ljava/lang/String; = "SmartFolderManager"


# instance fields
.field protected mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/modules/collection/CollectionManager;-><init>()V

    const-string v0, "com.htc.HTCAlbum.SMART_TIME_DAY"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mSmartType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    return-void
.end method

.method private getLimits(Landroid/os/Bundle;)I
    .locals 3

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const-string v2, "key_event_limits"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    mul-int/lit8 v0, v0, 0x64

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected addLocalCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJDDJ)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-nez v4, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-result-object v4

    move-wide/from16 v5, p8

    move-wide/from16 v7, p8

    move-wide/from16 v9, p14

    move-wide/from16 v11, p16

    invoke-virtual/range {v4 .. v12}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJDD)V

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-wide/from16 v5, p8

    move-wide/from16 v7, p14

    move-wide/from16 v9, p16

    invoke-virtual/range {v4 .. v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->inRange(JDD)Z

    move/from16 v5, p3

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p18

    invoke-virtual/range {v4 .. v14}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V

    return-void
.end method

.method protected addSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDD)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJDD)V"
        }
    .end annotation

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    add-int/lit8 v14, v15, -0x1

    :goto_0
    if-ltz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v4, :cond_1

    move-wide/from16 v3, p8

    move-wide/from16 v5, p14

    move-wide/from16 v7, p16

    invoke-virtual/range {v2 .. v8}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->inRange(JDD)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v2

    :goto_1
    if-nez v3, :cond_0

    const-string v4, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    const-string v5, ""

    const-string v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-result-object v3

    move-wide/from16 v4, p8

    move-wide/from16 v6, p8

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    invoke-virtual/range {v3 .. v11}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJDD)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v12, -0x1

    move/from16 v4, p3

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p10

    move/from16 v9, p11

    move-wide/from16 v10, p12

    invoke-virtual/range {v3 .. v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V

    return-void

    :cond_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v3, v16

    goto :goto_1
.end method

.method protected doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .locals 1

    const-string v0, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/modules/collection/Collection;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-result-object v0

    return-object v0
.end method

.method protected doLoadDataFromCursor(Landroid/content/Context;Ljava/util/HashMap;ILandroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;I",
            "Landroid/database/Cursor;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_3

    const-string v2, "key_no_res_displayname"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getLimits(Landroid/os/Bundle;)I

    move-result v46

    const/16 v43, 0x0

    :goto_1
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->CANCEL_LOADING:Z

    if-nez v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x5

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v10, v2

    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x4

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    const/4 v2, 0x6

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/4 v2, 0x7

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0xe

    move/from16 v0, p3

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe0

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    :cond_2
    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    if-eqz v47, :cond_4

    const-string v8, ""

    :goto_2
    const-string v6, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    const-string v7, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v21}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->addLocalCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDJ)V

    goto :goto_1

    :cond_3
    const/16 v47, 0x0

    goto/16 :goto_0

    :cond_4
    const-string v8, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    goto :goto_2

    :cond_5
    const/16 v2, 0xb

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_6

    const/16 v25, 0x10

    :goto_3
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_7

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    :goto_4
    const/16 v2, 0x9

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v36

    const/16 v2, 0xa

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v38

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileInCameraShots(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_8

    invoke-static/range {v48 .. v48}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileInAllDownloads(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v44, 0x1

    :goto_5
    if-eqz v44, :cond_a

    if-eqz v47, :cond_9

    const-string v8, ""

    :goto_6
    const-string v26, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    const-string v27, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    const-wide/16 v40, -0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p2

    move-object/from16 v24, p1

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-wide/from16 v30, v10

    move-object/from16 v32, v12

    invoke-virtual/range {v22 .. v41}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->addLocalCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDJ)V

    :goto_7
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v25, 0x1

    goto :goto_3

    :cond_7
    const/16 v33, 0x0

    goto :goto_4

    :cond_8
    const/16 v44, 0x0

    goto :goto_5

    :cond_9
    const-string v8, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    goto :goto_6

    :cond_a
    if-nez v45, :cond_c

    if-eqz v47, :cond_b

    const-string v8, ""

    :cond_b
    const-string v26, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    const-wide/16 v40, -0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p2

    move-object/from16 v24, p1

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-wide/from16 v30, v10

    move-object/from16 v32, v12

    invoke-virtual/range {v22 .. v41}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->addLocalCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDJ)V

    goto :goto_7

    :cond_c
    const-string v26, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    move-object/from16 v22, p0

    move-object/from16 v23, p2

    move-object/from16 v24, p1

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-wide/from16 v30, v10

    move-object/from16 v32, v12

    invoke-virtual/range {v22 .. v39}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->addSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDD)V

    goto :goto_7

    :cond_d
    const/16 v2, 0xe

    move/from16 v0, p3

    if-eq v0, v2, :cond_f

    const/16 v2, 0xe0

    move/from16 v0, p3

    if-eq v0, v2, :cond_f

    if-ltz v46, :cond_e

    move/from16 v0, v43

    move/from16 v1, v46

    if-ge v0, v1, :cond_10

    :cond_e
    const/16 v42, 0x1

    :goto_8
    const-string v2, "key_query_completed"

    move-object/from16 v0, p5

    move/from16 v1, v42

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f
    return-void

    :cond_10
    const/16 v42, 0x0

    goto :goto_8
.end method

.method protected doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    :goto_0
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    :goto_1
    const-string v0, "SmartFolderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCollectionList] requestedSources = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", requestImage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", requestVideo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    const/16 v3, 0x11

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    and-int/lit8 v0, p2, 0xe

    if-eqz v0, :cond_0

    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    and-int/lit16 v0, p2, 0xe0

    if-eqz v0, :cond_1

    const/16 v3, 0xe0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v0, "SmartFolderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCollectionList] Time cost: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v3, v9, v11

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_4
    if-eqz v7, :cond_5

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    const-string v0, "SmartFolderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCollectionList] undefine requestedSources = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected getCursor(Landroid/content/ContentResolver;ILjava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 23

    const/4 v14, 0x0

    :try_start_0
    const-string v5, ""

    const/4 v3, 0x0

    const/16 v21, 0x0

    sparse-switch p2, :sswitch_data_0

    const-string v2, "SmartFolderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefine sourceType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getImageWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getVideoWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string v15, ""

    if-eqz p4, :cond_3

    const-string v2, "key_load_events"

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    :goto_2
    if-eqz p4, :cond_4

    const-string v2, "key_load_events_only"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getLimits(Landroid/os/Bundle;)I

    move-result v18

    if-nez v21, :cond_7

    if-eqz v20, :cond_5

    sget-object v15, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String;

    :cond_0
    :goto_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_5
    const-string v7, "datetaken DESC, date_modified DESC"

    if-lez v18, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " LIMIT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_6
    move-object v2, v14

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getImageWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getVideoWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :sswitch_3
    sget-object v3, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x1

    goto/16 :goto_1

    :sswitch_4
    sget-object v3, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x1

    goto/16 :goto_1

    :cond_3
    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_5
    if-nez v19, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v5, v15

    goto :goto_5

    :cond_7
    if-eqz v20, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    sget-object v10, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "date_added DESC"

    move-object/from16 v8, p1

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_6

    :catch_0
    move-exception v16

    const-string v2, "SmartFolderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getCursor] Exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xe -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_0
        0xe0 -> :sswitch_4
    .end sparse-switch
.end method

.method protected getImageWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(media_type = 1"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSmartType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mSmartType:Ljava/lang/String;

    return-object v0
.end method

.method protected getVideoWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x10

    invoke-static {v2, p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(media_type = 3"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setSmartType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mSmartType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mSmartType:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method
