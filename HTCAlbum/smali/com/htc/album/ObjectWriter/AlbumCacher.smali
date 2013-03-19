.class public Lcom/htc/album/ObjectWriter/AlbumCacher;
.super Ljava/lang/Object;
.source "AlbumCacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;
    }
.end annotation


# static fields
.field public static final CACHE_ACTIVEUSER:Ljava/lang/String; = ".auser"

.field public static final CACHE_ACTIVEUSER_ID:I = 0x3

.field public static final CACHE_EVENT:Ljava/lang/String; = "event"

.field public static final CACHE_EVENT_ID:I = 0x1

.field public static final CACHE_LAND:Ljava/lang/String; = "land"

.field public static final CACHE_LAND_ID:I = 0x2

.field public static final CACHE_LOCAL:Ljava/lang/String; = "local"

.field public static final CACHE_LOCAL_ID:I = 0x0

.field public static final EXTENSION_CACHEALBUMLIST:Ljava/lang/String; = ".alist"

.field public static final EXTENSION_CACHEALBUMLIST_ID:I = 0x7

.field public static final EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String; = ".fflist"

.field public static final EXTENSION_CACHEFOLDERFILTERLIST_ID:I = 0x5

.field public static final EXTENSION_CACHEFOLDERLIST:Ljava/lang/String; = ".flist"

.field public static final EXTENSION_CACHEFOLDERLIST_ID:I = 0x4

.field public static final EXTENSION_CACHEFRIENDLIST:Ljava/lang/String; = ".clist"

.field public static final EXTENSION_CACHEFRIENDLIST_ID:I = 0x6

.field public static final EXTENSION_CACHELANDINGPAGE:Ljava/lang/String; = ".landlist"

.field public static final EXTENSION_CACHELANDINGPAGE_ID:I = 0xc

.field public static final EXTENSION_CACHEPHOTOLIST:Ljava/lang/String; = ".plist"

.field public static final EXTENSION_CACHEPHOTOLIST_ID:I = 0x8

.field public static final EXTENSION_CACHEPOMLIST:Ljava/lang/String; = ".pomlist"

.field public static final EXTENSION_CACHEPOMLIST_ID:I = 0xb

.field public static final EXTENSION_CACHERECENTLIST:Ljava/lang/String; = ".ruplist"

.field public static final EXTENSION_CACHERECENTLIST_ID:I = 0x9

.field public static final EXTENSION_CACHERECENTVLIST:Ljava/lang/String; = ".ruvlist"

.field public static final EXTENSION_CACHERECENTVLIST_ID:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AlbumCacher"

.field protected static getCacheType:[Ljava/lang/String;

.field private static mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "local"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "land"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".auser"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".flist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".fflist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".clist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".alist"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".plist"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".ruplist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".ruvlist"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".pomlist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ".landlist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->getCacheType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cancelThread()V
    .locals 1

    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    :cond_0
    return-void
.end method

.method private static getListObjectFormatterInstance(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    packed-switch p1, :pswitch_data_0

    const-string v5, "AlbumCacher"

    const-string v6, "[AlbumCacher][getListObjectFormatterInstance] Undefine type, can\'t get instance"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    :pswitch_0
    return-object v2

    :pswitch_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    new-instance v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_0

    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_0

    new-instance v3, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-direct {v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getLocalFolderFilterCache(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v0, 0x0

    const-string v3, "local"

    const-string v4, "local"

    invoke-static {p0, v3, v4, v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const-string v3, "local"

    const-string v4, "local"

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v6, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string v3, "AlbumCacher"

    const-string v4, "[HTCAlbum][AlbumCacher][getLocalFolderFilterCache]: null list error..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public static isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/album/ObjectWriter/AlbumCacher;->getCacheType:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    const-string v5, "AlbumCacher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumCacher][isFileCacheExist]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    const-string v5, "AlbumCacher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumCacher][isFileCacheExist] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v5, "AlbumCacher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumCacher][isFileCacheExist] IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static declared-synchronized readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation

    const-class v18, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v18

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    :try_start_0
    const-string v17, "AlbumCacher"

    const-string v19, "[HTCAlbum][AlbumCacher][readCache]: Begin"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/16 v17, 0x0

    :goto_0
    monitor-exit v18

    return-object v17

    :cond_1
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "_"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v19, Lcom/htc/album/ObjectWriter/AlbumCacher;->getCacheType:[Ljava/lang/String;

    aget-object v19, v19, p3

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v17, "VERSION:"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    :cond_2
    const-string v17, "AlbumCacher"

    const-string v19, "[HTCAlbum][AlbumCacher][readCache]: Wrong Header"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object v8, v9

    goto :goto_0

    :cond_3
    const/16 v17, 0x8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v2, p4

    const/4 v10, 0x0

    if-ge v5, v2, :cond_4

    const/4 v10, 0x1

    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache]: Version Change "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v16, ""

    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v8, v9

    :goto_2
    :try_start_4
    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache] Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x0

    :goto_3
    if-eqz v8, :cond_5

    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_5
    :try_start_7
    const-string v17, "AlbumCacher"

    const-string v19, "[HTCAlbum][AlbumCacher][readCache]: End"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v17, v13

    goto/16 :goto_0

    :cond_7
    :try_start_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v0, p3

    invoke-static {v14, v0}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getListObjectFormatterInstance(II)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_9

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v14, :cond_8

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/album/ObjectWriter/ObjectFormatter;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v12, v10, v2, v5, v0}, Lcom/htc/album/ObjectWriter/ObjectFormatter;->readFrom(ZIILjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache]: Successful: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v8, v9

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_9
    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache] IOException 1: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v17

    :goto_7
    monitor-exit v18

    throw v17

    :catch_2
    move-exception v3

    :try_start_a
    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache] IOException 2: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    :catch_3
    move-exception v3

    goto/16 :goto_2

    :catchall_1
    move-exception v17

    move-object v8, v9

    goto :goto_7
.end method

.method public static declared-synchronized readEventCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    const-class v23, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v23

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-string v22, "AlbumCacher"

    const-string v24, "[HTCAlbum][AlbumCacher][readEventCache]: Begin"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, v4

    :goto_0
    monitor-exit v23

    return-object v5

    :cond_1
    :try_start_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/htc/album/ObjectWriter/AlbumCacher;->getCacheType:[Ljava/lang/String;

    aget-object v24, v24, p3

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    :try_start_2
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v11, v12

    :goto_2
    :try_start_4
    const-string v22, "AlbumCacher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[HTCAlbum][AlbumCacher][readEventCache] Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-eqz v11, :cond_2

    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_4
    :try_start_6
    const-string v22, "AlbumCacher"

    const-string v24, "[HTCAlbum][AlbumCacher][readEventCache]: End"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v4

    goto/16 :goto_0

    :cond_3
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    if-eqz v9, :cond_4

    const-string v22, "VERSION:"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    :cond_4
    const-string v22, "AlbumCacher"

    const-string v24, "[HTCAlbum][AlbumCacher][readEventCache]: Wrong Header"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    move-object v5, v4

    goto/16 :goto_0

    :cond_5
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v0, p4

    if-eq v8, v0, :cond_6

    const/4 v13, 0x1

    const-string v22, "AlbumCacher"

    const-string v24, "[HTCAlbum][AlbumCacher][readEventCache]: Version Change"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    new-instance v14, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_7

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v14, v13, v0, v8, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->readFrom(ZIILjava/lang/String;)V

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getFolderType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getBucketId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v15

    check-cast v15, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    invoke-virtual {v15, v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-string v22, "AlbumCacher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[HTCAlbum][AlbumCacher][readEventCache]: Successful: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", time : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v25, v17, v19

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object v4, v5

    move-object v11, v12

    goto/16 :goto_3

    :catch_1
    move-exception v7

    :try_start_9
    const-string v22, "AlbumCacher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[HTCAlbum][AlbumCacher][readEventCache]: IOException: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v22

    :goto_6
    monitor-exit v23

    throw v22

    :catch_2
    move-exception v7

    goto/16 :goto_2

    :catch_3
    move-exception v7

    move-object v4, v5

    move-object v11, v12

    goto/16 :goto_2

    :catchall_1
    move-exception v22

    move-object v11, v12

    goto :goto_6

    :catchall_2
    move-exception v22

    move-object v4, v5

    move-object v11, v12

    goto :goto_6
.end method

.method public static final updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 1

    invoke-static {}, Lcom/htc/album/ObjectWriter/AlbumCacher;->cancelThread()V

    new-instance v0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    sput-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->start()V

    return-void
.end method

.method public static declared-synchronized writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;II)V"
        }
    .end annotation

    const-class v6, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v6

    :try_start_0
    const-string v5, "AlbumCacher"

    const-string v7, "[HTCAlbum][AlbumCacher][writeCache]: Begin"

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/htc/album/ObjectWriter/AlbumCacher;->getCacheType:[Ljava/lang/String;

    aget-object v7, v7, p4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "VERSION:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/ObjectWriter/ObjectFormatter;

    if-nez v3, :cond_3

    const-string v5, "AlbumCacher"

    const-string v7, "[HTCAlbum][AlbumCacher][writeCache]: Null object"

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v5, "AlbumCacher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AlbumCacher][writeCache] Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    :try_start_5
    const-string v5, "AlbumCacher"

    const-string v7, "[HTCAlbum][AlbumCacher][writeCache]: End"

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3
    const/16 v5, 0xa

    :try_start_6
    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write(I)V

    invoke-interface {v3}, Lcom/htc/album/ObjectWriter/ObjectFormatter;->toFormatedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-string v5, "AlbumCacher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AlbumCacher][writeCache]: Successful: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    const-string v5, "AlbumCacher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AlbumCacher][writeCache] IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method
