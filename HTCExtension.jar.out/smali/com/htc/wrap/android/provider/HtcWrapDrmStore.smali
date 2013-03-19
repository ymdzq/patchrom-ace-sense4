.class public final Lcom/htc/wrap/android/provider/HtcWrapDrmStore;
.super Ljava/lang/Object;
.source "HtcWrapDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$UpdateLicense;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$ErrorCode;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Err;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$AlbumArt;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Columns;
    }
.end annotation


# static fields
.field public static final ALBUMS_PROJECTION:[Ljava/lang/String; = null

.field public static final ARTISTS_PROJECTION:[Ljava/lang/String; = null

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field private static CMD_CHMOD:[Ljava/lang/String; = null

.field public static final CONSTRAINT_PROJECTION:[Ljava/lang/String; = null

.field private static final CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/"

.field private static final CUSTOM_CATEGORY_NAME:Ljava/lang/String; = "application"

.field private static final CUSTOM_FUNCTION_NAME:Ljava/lang/String; = "Drm_Support"

.field private static final CUSTOM_MODEL_NAME:Ljava/lang/String; = "Drm_Provider"

.field private static final CUSTOM_NAME_COMBINED_DELIVERY:Ljava/lang/String; = "combined_delivery"

.field private static final CUSTOM_NAME_COMBINED_DELIVERY_ACRONYM:Ljava/lang/String; = "CD"

.field private static final CUSTOM_NAME_FORWARD_LOCK:Ljava/lang/String; = "forward_lock"

.field private static final CUSTOM_NAME_FORWARD_LOCK_ACRONYM:Ljava/lang/String; = "FL"

.field private static final CUSTOM_NAME_SEPARATE_DELIVERY:Ljava/lang/String; = "separate_delivery"

.field private static final CUSTOM_NAME_SEPARATE_DELIVERY_ACRONYM:Ljava/lang/String; = "SD"

.field private static final CUSTOM_NAME_VERSION:Ljava/lang/String; = "version"

.field public static final DCFLIST_PROJECTION:[Ljava/lang/String; = null

.field public static final DELIVERY_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static DISABLE_COMBINED_DELIVERY:Z = false

.field private static DISABLE_FORWORD_LOCK:Z = false

.field private static DISABLE_SEPARATE_DELIVERY:Z = false

.field public static final DRM_COMBINED_DELIVERY:I = 0x2

.field public static final DRM_DELIVERY_CD:I = 0xf0

.field public static final DRM_DELIVERY_FL:I = 0xf

.field public static final DRM_DELIVERY_SD:I = 0xf00

.field private static final DRM_FIND_BASE64_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: base64"

.field public static final DRM_FORWARD_LOCK:I = 0x1

.field public static final DRM_HTC_RIGHTS_DIRECTORY_PATH:Ljava/lang/String; = "/data/data/com.android.providers.drm/rights"

.field public static final DRM_HTC_TMP_DIRECTORY:Ljava/lang/String; = "tmp"

.field public static final DRM_PERMISSION_DISPLAY:I = 0x2

.field public static final DRM_PERMISSION_EXECUTE:I = 0x3

.field public static final DRM_PERMISSION_PLAY:I = 0x1

.field public static final DRM_PERMISSION_PRINT:I = 0x4

.field private static final DRM_REPLACE_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: binary"

.field public static final DRM_SEPARATE_DELIVERY:I = 0x3

.field public static final DrmUriCollection:[Landroid/net/Uri; = null

.field public static final FILEPATH_PROJECTION:[Ljava/lang/String; = null

.field private static final GARBAGE_FILE:Ljava/lang/String; = "garbage"

.field private static final INSTALL_FOLDER:Ljava/lang/String; = "/download/"

.field private static final LOGD:Z = true

.field public static final METADATA_PROJECTION:[Ljava/lang/String; = null

.field public static final MIDLET_PROJECTION:[Ljava/lang/String; = null

.field private static final PLATFORM_7x27:Ljava/lang/String; = "7x27"

.field private static final PLATFORM_MSM7K:Ljava/lang/String; = "msm7k"

.field private static REBUILD_DATABASE:Z = false

.field private static RELOAD_CUSTOM_SETTING:Z = false

.field private static final REPEAT_COUNT:I = 0x3

.field public static final STAMP_PROJECTION:[Ljava/lang/String; = null

.field public static final SUPPORTS_EXTERNAL_STORAGE:I = 0x1

.field public static final SUPPORTS_PHONE_STORAGE:I = 0x2

.field private static SWITCH_TO_CID:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcWrapDrmStore"

.field public static final TITLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    .line 99
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    .line 100
    sput-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 101
    sput-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 102
    sput-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    .line 103
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->RELOAD_CUSTOM_SETTING:Z

    .line 134
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v3

    const-string v1, "666"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    .line 472
    new-array v0, v7, [Landroid/net/Uri;

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DrmUriCollection:[Landroid/net/Uri;

    .line 601
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "content_url"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    .line 608
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    .line 617
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CONSTRAINT_PROJECTION:[Ljava/lang/String;

    .line 622
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    .line 639
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "delivery_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    .line 646
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "content_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    .line 657
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->MIDLET_PROJECTION:[Ljava/lang/String;

    .line 666
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 676
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "artist_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    .line 686
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "time_stamp"

    aput-object v1, v0, v4

    const-string v1, "clock_stamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "timezone_stamp"

    aput-object v1, v0, v6

    const-string/jumbo v1, "time_differential"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "network_sync"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 704
    return-void
.end method

.method private static final NeedToEncrypt(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 7439
    const-string v0, "application/java-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 7442
    const/4 v0, 0x1

    .line 7444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final SupportForwardLockOnly()Z
    .locals 2

    .prologue
    .line 7262
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9e

    if-ne v0, v1, :cond_1

    .line 7289
    :cond_0
    const/4 v0, 0x1

    .line 7291
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 6528
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "********acquireRights"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6530
    const/16 v16, 0x0

    .line 6532
    .local v16, uri:Landroid/net/Uri;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6534
    :cond_0
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "acquireRights : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6536
    const/4 v2, 0x0

    .line 6651
    :goto_0
    return-object v2

    .line 6539
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6541
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 6543
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "acquireRights : -6"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6545
    const/4 v2, 0x0

    goto :goto_0

    .line 6546
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 6548
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "acquireRights no record."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6550
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6551
    const/4 v2, 0x0

    goto :goto_0

    .line 6554
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6555
    const-string v2, "message_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6556
    .local v15, messageTypeColumnId:I
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6557
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6559
    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6561
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "acquireRights : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6563
    const/4 v2, 0x0

    goto :goto_0

    .line 6566
    :cond_4
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6568
    .local v11, file:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6569
    .local v12, fis:Ljava/io/InputStream;
    new-instance v9, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v12}, Ljava/io/FileInputStream;->available()I

    move-result v2

    invoke-direct {v9, v12, v2, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6570
    .local v9, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v9}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 6571
    .local v13, issuer:Ljava/lang/String;
    if-nez v13, :cond_5

    .line 6573
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "Null issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6575
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 6576
    const/4 v2, 0x0

    goto :goto_0

    .line 6577
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 6579
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "Empty issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6581
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 6582
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 6584
    :cond_6
    const-string v2, "\\"

    const-string v3, "/"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 6586
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Right Issure = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6590
    :try_start_1
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 6592
    .local v17, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "uri"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6594
    const-string v2, "entity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6596
    const-string v2, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6598
    const-string v2, "notificationclass"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6600
    const-string/jumbo v2, "visibility"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6602
    const-string v2, "is_visible_in_downloads_ui"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6607
    const-string v2, "restriction"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6637
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    move-object/from16 v2, v16

    .line 6651
    goto/16 :goto_0

    .line 6638
    .end local v17           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 6640
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6642
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6643
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 6645
    .end local v9           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #fis:Ljava/io/InputStream;
    .end local v13           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 6647
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6649
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    .line 862
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********addDrmFile (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    .line 874
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********addDrmFile (2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"

    .prologue
    .line 1284
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     addDrmFile with url (4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 1311
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     addDrmFile with url and destination (5)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 110
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"
    .parameter "targetFolder"

    .prologue
    .line 1343
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -BEGIN"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 1353
    :cond_0
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "ERROR: addDrmFile input error."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/16 v71, 0x0

    .line 2754
    :cond_1
    :goto_0
    return-object v71

    .line 1367
    :cond_2
    const/4 v3, 0x7

    move/from16 v0, p5

    if-eq v0, v3, :cond_3

    .line 1370
    const/16 p5, 0x0

    .line 1374
    :cond_3
    const/16 v71, 0x0

    .line 1375
    .local v71, intent:Landroid/content/Intent;
    const/16 v61, 0x0

    .line 1378
    .local v61, fin:Ljava/io/FileInputStream;
    const-string v3, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1382
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    .line 1384
    .local v107, uid:Ljava/lang/String;
    if-eqz v107, :cond_6

    .line 1388
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install rights : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v107

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "content_id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v107, v7, v9

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 1397
    .local v38, cursor:Landroid/database/Cursor;
    if-nez v38, :cond_5

    .line 1401
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1406
    :cond_5
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 1413
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 1565
    :goto_1
    new-instance v71, Landroid/content/Intent;

    .end local v71           #intent:Landroid/content/Intent;
    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V

    .line 1566
    .restart local v71       #intent:Landroid/content/Intent;
    const-string v3, "DRM Rights"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v71

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    .end local v38           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1422
    .restart local v38       #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1424
    const-string v3, "_data"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 1425
    .local v40, dataColumnIndext:I
    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 1427
    .local v59, filepath:Ljava/lang/String;
    const-string v3, "mime_type"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v78

    .line 1428
    .local v78, mimeTypeColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1430
    .local v6, mimeType:Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v70

    .line 1431
    .local v70, idColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v69

    .line 1433
    .local v69, id:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1435
    .local v7, contentUri:Landroid/net/Uri;
    if-eqz v59, :cond_b

    .line 1437
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v59

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v4, parseFile:Ljava/io/File;
    move/from16 v8, p5

    .line 1443
    .local v8, newDestination:I
    const/16 v29, 0x0

    .line 1444
    .local v29, checked:Z
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getSupportedStorages()I

    move-result v97

    .line 1447
    .local v97, supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_9

    .line 1454
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v60

    .line 1455
    .local v60, filepathUpperCase:Ljava/lang/String;
    const/16 v48, 0x0

    .line 1457
    .local v48, downloadPathUpperCase:Ljava/lang/String;
    if-eqz p6, :cond_8

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1460
    :cond_8
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    .line 1468
    :goto_2
    move-object/from16 v0, v60

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1469
    const/4 v8, 0x0

    .line 1470
    const/16 v29, 0x1

    .line 1486
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :cond_9
    if-nez v29, :cond_a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_a

    .line 1505
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v47

    .line 1508
    .local v47, downloadPath:Ljava/lang/String;
    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1509
    const/4 v8, 0x7

    .line 1526
    .end local v47           #downloadPath:Ljava/lang/String;
    :cond_a
    sparse-switch v8, :sswitch_data_0

    .line 1535
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :goto_3
    const-string v5, "application/vnd.oma.drm.content"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 1555
    .local v109, values:Landroid/content/ContentValues;
    if-eqz v109, :cond_b

    .line 1557
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v3, v7, v0, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1561
    .end local v4           #parseFile:Ljava/io/File;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1465
    .restart local v4       #parseFile:Ljava/io/File;
    .restart local v8       #newDestination:I
    .restart local v29       #checked:Z
    .restart local v48       #downloadPathUpperCase:Ljava/lang/String;
    .restart local v60       #filepathUpperCase:Ljava/lang/String;
    .restart local v97       #supportedStorages:I
    :cond_c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    goto :goto_2

    .line 1529
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :sswitch_0
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1532
    :sswitch_1
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1579
    .end local v4           #parseFile:Ljava/io/File;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v38           #cursor:Landroid/database/Cursor;
    .end local v40           #dataColumnIndext:I
    .end local v59           #filepath:Ljava/lang/String;
    .end local v69           #id:I
    .end local v70           #idColumnIndex:I
    .end local v78           #mimeTypeColumnIndex:I
    .end local v97           #supportedStorages:I
    .end local v107           #uid:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1582
    .local v11, cr:Landroid/content/ContentResolver;
    const/16 v56, 0x0

    .line 1584
    .local v56, fileName:Ljava/lang/String;
    if-nez p2, :cond_f

    .line 1586
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1600
    :goto_4
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v45

    .line 1602
    .local v45, dot:I
    const/4 v3, -0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_11

    .line 1605
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1628
    :cond_e
    :goto_5
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add DRM file : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :try_start_0
    new-instance v62, Ljava/io/FileInputStream;

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    .line 1635
    .end local v61           #fin:Ljava/io/FileInputStream;
    .local v62, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v32, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v32

    move-object/from16 v1, v62

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1641
    .local v32, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v105

    .line 1643
    .local v105, transferEncoding:I
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x3

    move/from16 v0, v105

    if-ne v0, v3, :cond_17

    .line 1648
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const-string v83, "/data/data/com.android.providers.drm/rights/tmp"

    .line 1654
    .local v83, outputBinaryFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1655
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1662
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2738
    :try_start_2
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2740
    :catch_0
    move-exception v52

    .line 2742
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1592
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v45           #dot:I
    .end local v52           #e:Ljava/lang/Exception;
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v105           #transferEncoding:I
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_f
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Title is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    move-object/from16 v56, p2

    goto/16 :goto_4

    .line 1609
    .restart local v45       #dot:I
    :cond_10
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1616
    :cond_11
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1620
    :cond_12
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1665
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v105       #transferEncoding:I
    :cond_13
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1667
    const/4 v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v83

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_14

    .line 1670
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(2) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1677
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2738
    :try_start_4
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2740
    :catch_1
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1680
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_14
    :try_start_5
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v83

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v10, binaryFile:Ljava/io/File;
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1683
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1684
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    .line 1686
    invoke-static/range {v9 .. v15}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v11           #cr:Landroid/content/ContentResolver;
    move-result-object v89

    .line 1690
    .local v89, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1691
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2737
    :cond_15
    :goto_6
    if-eqz v62, :cond_16

    .line 2738
    :try_start_7
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_16
    :goto_7
    move-object/from16 v71, v89

    .line 2744
    goto/16 :goto_0

    .line 1693
    :catch_2
    move-exception v52

    .line 1694
    .restart local v52       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 2719
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .end local v105           #transferEncoding:I
    :catch_3
    move-exception v52

    move-object/from16 v61, v62

    .line 2725
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v52       #e:Ljava/lang/Exception;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_8
    :try_start_9
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V

    .line 2730
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(12) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 2733
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v61, :cond_1

    .line 2738
    :try_start_a
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 2740
    :catch_4
    move-exception v52

    .line 2742
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v61           #fin:Ljava/io/FileInputStream;
    :goto_9
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2740
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v10       #binaryFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v89       #resultIntent:Landroid/content/Intent;
    .restart local v105       #transferEncoding:I
    :catch_5
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1704
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    :cond_17
    :try_start_b
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 1706
    .restart local v6       #mimeType:Ljava/lang/String;
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimeType = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v77

    .line 1711
    .local v77, method:I
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "method = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-eq v3, v5, :cond_1a

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-ne v3, v5, :cond_18

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_18
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_19

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_19
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x63

    if-ne v3, v5, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x66

    if-ne v3, v5, :cond_26

    .line 1737
    :cond_1a
    const/16 v18, 0x1

    .line 1743
    .local v18, flRingtone:Z
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v33

    .line 1750
    .local v33, contentOffset:I
    const-string/jumbo v3, "video"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v77

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_30

    .line 1753
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 1758
    .local v54, extention:Ljava/lang/String;
    new-instance v82, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1765
    .local v82, outFile:Ljava/io/File;
    const/16 v63, 0x0

    .line 1766
    .local v63, fis:Ljava/io/FileInputStream;
    const/16 v65, 0x0

    .line 1768
    .local v65, fis2:Ljava/io/FileInputStream;
    const/16 v67, 0x0

    .line 1769
    .local v67, fos:Ljava/io/FileOutputStream;
    const/16 v73, 0x0

    .line 1770
    .local v73, is:Ljava/io/InputStream;
    const/16 v74, 0x0

    .line 1777
    .local v74, isTerminated:Z
    :try_start_c
    new-instance v64, Ljava/io/FileInputStream;

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1786
    .end local v63           #fis:Ljava/io/FileInputStream;
    .local v64, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v64

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1790
    .local v98, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v75

    .line 1791
    .local v75, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v75

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1796
    .local v91, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v41, 0x0

    .line 1797
    .local v41, deleteRights:Z
    if-nez v91, :cond_76

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_76

    .line 1826
    if-eqz v64, :cond_1d

    .line 1827
    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_20

    .line 1828
    const/16 v63, 0x0

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    move-object/from16 v64, v63

    .line 1830
    .end local v63           #fis:Ljava/io/FileInputStream;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 1833
    :cond_1d
    :try_start_f
    new-instance v63, Ljava/io/FileInputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_20

    .line 1839
    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v75

    move-object/from16 v1, v63

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1841
    const/16 v41, 0x1

    .line 1847
    :goto_b
    if-eqz v63, :cond_1e

    .line 1848
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1849
    const/16 v63, 0x0

    .line 1853
    :cond_1e
    if-eqz v91, :cond_28

    .line 1860
    new-instance v66, Ljava/io/FileInputStream;

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 1861
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .local v66, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v66 .. v66}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v66

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1865
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v98

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v73

    .line 1866
    new-instance v68, Ljava/io/FileOutputStream;

    move-object/from16 v0, v68

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_21

    .line 1868
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .local v68, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v73

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 1870
    if-eqz v41, :cond_1f

    .line 1871
    move-object/from16 v0, v75

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 1876
    :cond_1f
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    .line 1877
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 1879
    new-instance v76, Landroid/media/MediaInfo;

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 1880
    .local v76, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v76

    invoke-virtual {v0, v3}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v106

    .line 1881
    .local v106, type:I
    const/4 v3, 0x1

    move/from16 v0, v106

    if-ne v0, v3, :cond_27

    .line 1882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1891
    :cond_20
    :goto_c
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type by MediaInfo: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_22

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .line 1900
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    :goto_d
    if-eqz v67, :cond_21

    .line 1901
    :try_start_13
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1902
    const/16 v67, 0x0

    .line 1904
    :cond_21
    if-eqz v73, :cond_22

    .line 1905
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1906
    const/16 v73, 0x0

    .line 1915
    :cond_22
    if-eqz v63, :cond_23

    .line 1916
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1917
    const/16 v63, 0x0

    .line 1919
    :cond_23
    if-eqz v65, :cond_24

    .line 1920
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1921
    const/16 v65, 0x0

    .line 1924
    :cond_24
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1925
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1927
    :cond_25
    if-eqz v74, :cond_30

    .line 1931
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 1933
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2738
    :try_start_14
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_0

    .line 2740
    :catch_6
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1739
    .end local v18           #flRingtone:Z
    .end local v33           #contentOffset:I
    .end local v41           #deleteRights:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_26
    const/16 v18, 0x0

    .restart local v18       #flRingtone:Z
    goto/16 :goto_a

    .line 1884
    .restart local v33       #contentOffset:I
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v76       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v106       #type:I
    :cond_27
    const/4 v3, 0x2

    move/from16 v0, v106

    if-ne v0, v3, :cond_20

    .line 1885
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_22

    move-result-object v6

    goto/16 :goto_c

    .line 1894
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v68           #fos:Ljava/io/FileOutputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    :cond_28
    :try_start_16
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type from DRM header: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_d

    .line 1896
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_7
    move-exception v52

    .line 1897
    .restart local v52       #e:Ljava/lang/Exception;
    :goto_e
    :try_start_17
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 1898
    const/16 v74, 0x1

    .line 1900
    if-eqz v67, :cond_29

    .line 1901
    :try_start_18
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1902
    const/16 v67, 0x0

    .line 1904
    :cond_29
    if-eqz v73, :cond_2a

    .line 1905
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1906
    const/16 v73, 0x0

    .line 1915
    :cond_2a
    if-eqz v63, :cond_2b

    .line 1916
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1917
    const/16 v63, 0x0

    .line 1919
    :cond_2b
    if-eqz v65, :cond_2c

    .line 1920
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1921
    const/16 v65, 0x0

    .line 1924
    :cond_2c
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1925
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1927
    :cond_2d
    if-eqz v74, :cond_30

    .line 1931
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 1933
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2738
    :try_start_19
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    goto/16 :goto_0

    .line 2740
    :catch_8
    move-exception v52

    .line 2742
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1900
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_2e
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 2736
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v18           #flRingtone:Z
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v77           #method:I
    .end local v82           #outFile:Ljava/io/File;
    .end local v105           #transferEncoding:I
    :catchall_0
    move-exception v3

    move-object/from16 v61, v62

    .line 2737
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_f
    if-eqz v61, :cond_2f

    .line 2738
    :try_start_1b
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1d

    .line 2736
    :cond_2f
    :goto_10
    throw v3

    .line 1940
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v105       #transferEncoding:I
    :cond_30
    :try_start_1c
    const-string v34, ""

    .line 1942
    .local v34, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1945
    .restart local v7       #contentUri:Landroid/net/Uri;
    const-string v3, "audio/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1946
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 1968
    :goto_11
    const/16 v50, 0x0

    .line 1969
    .local v50, duplicate:Z
    const/16 v84, 0x0

    .line 1970
    .local v84, overwrite:Z
    const/16 v108, 0x0

    .line 1972
    .local v108, uri:Landroid/net/Uri;
    sget-object v13, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v14, "content_url=?"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v15, v3

    const-string v16, "_id"

    move-object v12, v7

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1973
    .local v26, c:Landroid/database/Cursor;
    if-eqz v26, :cond_75

    .line 1974
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_74

    .line 1978
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " duplicated."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1981
    const-string v3, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1982
    .local v31, columnIdIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1983
    .local v30, columnId:I
    const-string v3, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 1984
    .local v58, filePathIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1985
    .local v57, filePath:Ljava/lang/String;
    const-string/jumbo v3, "title"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v104

    .line 1986
    .local v104, titleInddex:I
    move-object/from16 v0, v26

    move/from16 v1, v104

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1987
    .local v49, dup_title:Ljava/lang/String;
    const/16 v47, 0x0

    .line 1989
    .restart local v47       #downloadPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v108

    .line 1990
    new-instance v72, Landroid/content/Intent;

    invoke-direct/range {v72 .. v72}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 1991
    .end local v71           #intent:Landroid/content/Intent;
    .local v72, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v72

    move-object/from16 v1, v108

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1993
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dup_title:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const-string/jumbo v3, "title"

    move-object/from16 v0, v72

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1996
    const/16 v50, 0x1

    .line 2001
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    new-instance v55, Ljava/io/File;

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2005
    .local v55, f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 2006
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2007
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->delete()Z

    .line 2011
    :cond_31
    const/4 v3, 0x7

    move/from16 v0, p5

    if-ne v0, v3, :cond_39

    .line 2021
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 2023
    if-eqz v47, :cond_32

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2024
    :cond_32
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    .line 2027
    const/16 v71, 0x0

    .line 2737
    if-eqz v62, :cond_1

    .line 2738
    :try_start_1e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_0

    .line 2740
    :catch_9
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1947
    .end local v26           #c:Landroid/database/Cursor;
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_33
    :try_start_1f
    const-string v3, "image/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1948
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1949
    :cond_34
    const-string/jumbo v3, "video/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1950
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1951
    :cond_35
    const-string v3, "application/java-archive"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1952
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1955
    :cond_36
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported mime type "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1961
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(5) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 1964
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2738
    :try_start_20
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a

    goto/16 :goto_0

    .line 2740
    :catch_a
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2030
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_37
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 2068
    :goto_12
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    new-instance v55, Ljava/io/File;

    .end local v55           #f:Ljava/io/File;
    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2075
    .restart local v55       #f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2077
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "File exists, use a new name"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v53

    .line 2080
    .local v53, ext:I
    const/16 v87, 0x0

    .line 2081
    .local v87, prefix:Ljava/lang/String;
    const/16 v96, 0x0

    .line 2082
    .local v96, suffix:Ljava/lang/String;
    if-lez v53, :cond_3e

    .line 2083
    const/4 v3, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v87

    .line 2084
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v96

    .line 2089
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "---"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v96

    invoke-static {v3, v0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v79

    .line 2091
    .local v79, newFile:Ljava/io/File;
    invoke-virtual/range {v79 .. v79}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v57

    .line 2093
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    .end local v53           #ext:I
    .end local v79           #newFile:Ljava/io/File;
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    :cond_38
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 2100
    .local v39, cv:Landroid/content/ContentValues;
    sget-object v12, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "_id"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 2102
    .local v93, stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_40

    .line 2103
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2109
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 2111
    .local v44, differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 2112
    .local v42, differential:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 2114
    .local v102, timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 2115
    .local v100, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 2116
    .local v36, currentClock:J
    const-string v3, "date_modified"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2117
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2122
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_14
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 2128
    :goto_15
    const/16 v84, 0x1

    .line 2130
    const-string v3, "existence"

    const-string v5, "exist"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    const-string v3, "/"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v92

    .line 2140
    .local v92, slashPos:I
    add-int/lit8 v3, v92, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    .line 2142
    .local v46, downloadName:Ljava/lang/String;
    const-string v3, "bucket_display_name"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_d

    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v71, v72

    .line 2147
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v46           #downloadName:Ljava/lang/String;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v92           #slashPos:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .restart local v71       #intent:Landroid/content/Intent;
    :goto_16
    :try_start_22
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 2149
    if-eqz v50, :cond_41

    if-nez v84, :cond_41

    .line 2151
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "File is duplicated and exist."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 2737
    if-eqz v62, :cond_1

    .line 2738
    :try_start_23
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b

    goto/16 :goto_0

    .line 2740
    :catch_b
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2050
    .end local v16           #uri:Landroid/net/Uri;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_39
    if-eqz p6, :cond_3a

    :try_start_24
    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2051
    :cond_3a
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 2057
    :goto_17
    if-eqz v47, :cond_3b

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2058
    :cond_3b
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_d

    .line 2061
    const/16 v71, 0x0

    .line 2737
    if-eqz v62, :cond_1

    .line 2738
    :try_start_25
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c

    goto/16 :goto_0

    .line 2740
    :catch_c
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2054
    .end local v52           #e:Ljava/lang/Exception;
    :cond_3c
    move-object/from16 v47, p6

    goto :goto_17

    .line 2064
    :cond_3d
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_12

    .line 2086
    .restart local v53       #ext:I
    .restart local v87       #prefix:Ljava/lang/String;
    .restart local v96       #suffix:Ljava/lang/String;
    :cond_3e
    move-object/from16 v87, v56

    .line 2087
    const-string v96, ""

    goto/16 :goto_13

    .line 2119
    .end local v53           #ext:I
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :cond_3f
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2120
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_14

    .line 2719
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catch_d
    move-exception v52

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_8

    .line 2124
    .end local v61           #fin:Ljava/io/FileInputStream;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_40
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2125
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d

    goto/16 :goto_15

    .line 2736
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v3

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_f

    .line 2155
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    :cond_41
    if-eqz v50, :cond_54

    if-eqz v84, :cond_54

    .line 2157
    :try_start_27
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "Overwrite the file."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v51

    .line 2163
    .local v51, duplicatePath:Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2164
    .local v28, checkFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_42

    .line 2165
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 2170
    :cond_42
    invoke-static {v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_48

    .line 2173
    :cond_43
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 2179
    .local v94, stream:Ljava/io/FileInputStream;
    :try_start_28
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3

    .line 2197
    .local v81, os:Ljava/io/FileOutputStream;
    :goto_18
    if-nez v81, :cond_47

    .line 2198
    :try_start_29
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3

    .line 2342
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_44
    :goto_19
    :try_start_2a
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_13

    move-object/from16 v61, v62

    .line 2352
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_1a
    :try_start_2b
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 2364
    invoke-static/range {v12 .. v18}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_15

    .line 2737
    :cond_45
    :goto_1b
    if-eqz v61, :cond_1

    .line 2738
    :try_start_2c
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e

    goto/16 :goto_0

    .line 2740
    :catch_e
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2180
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catch_f
    move-exception v52

    .line 2181
    .local v52, e:Ljava/io/FileNotFoundException;
    :try_start_2d
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2182
    .local v35, createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2183
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_18

    .line 2185
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_46
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2190
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_3

    .line 2193
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2738
    :try_start_2e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_10

    goto/16 :goto_0

    .line 2740
    :catch_10
    move-exception v52

    .line 2742
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2201
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :cond_47
    :try_start_2f
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 2203
    :try_start_30
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 2204
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 2203
    :catchall_2
    move-exception v3

    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 2204
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 2203
    throw v3

    .line 2207
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_48
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2209
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_49

    .line 2210
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 2219
    :cond_49
    const-string v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2222
    .local v85, platform:Ljava/lang/String;
    if-eqz v85, :cond_4a

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2223
    :cond_4a
    const/16 v86, 0x0

    .line 2228
    .local v86, platformLowerCase:Ljava/lang/String;
    :goto_1c
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_4b

    if-eqz v86, :cond_51

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2243
    :cond_4b
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ save duplicate File for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_3

    .line 2247
    :try_start_31
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2249
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4

    move-result v3

    if-nez v3, :cond_4c

    .line 2251
    :try_start_32
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_1a

    .line 2254
    const/16 v35, 0x0

    .line 2255
    :try_start_33
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2259
    :cond_4c
    :goto_1d
    const/16 v88, 0x0

    .line 2260
    .local v88, repeat:I
    const/16 v95, 0x0

    .line 2261
    .local v95, success:Z
    const/16 v90, 0x0

    .line 2263
    .local v90, resultSaveFile:I
    :goto_1e
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_50

    .line 2265
    if-ltz v88, :cond_4e

    .line 2266
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2267
    .local v99, tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2270
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v98

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4

    move-result v90

    .line 2273
    :try_start_34
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1b

    .line 2282
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_1f
    const/4 v3, -0x1

    move/from16 v0, v90

    if-ne v0, v3, :cond_4f

    .line 2283
    add-int/lit8 v88, v88, 0x1

    goto :goto_1e

    .line 2225
    .end local v35           #createFile:Ljava/io/File;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_4d
    :try_start_35
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_1c

    .line 2254
    .restart local v35       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v3

    const/16 v35, 0x0

    .line 2255
    :try_start_36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2254
    throw v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4

    .line 2294
    .end local v35           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v3

    :try_start_37
    throw v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 2275
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v3

    :try_start_38
    throw v3

    .line 2279
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_4e
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_4

    move-result v90

    goto :goto_1f

    .line 2286
    :cond_4f
    const/16 v88, 0x3

    .line 2287
    const/16 v95, 0x1

    goto :goto_1e

    .line 2291
    :cond_50
    if-nez v95, :cond_44

    .line 2292
    const/16 v71, 0x0

    goto/16 :goto_19

    .line 2303
    .end local v35           #createFile:Ljava/io/File;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_51
    :try_start_39
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_11
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    .line 2321
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :goto_20
    if-eqz v81, :cond_44

    .line 2327
    const/4 v3, -0x1

    :try_start_3a
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    move-result v5

    if-ne v3, v5, :cond_52

    .line 2329
    const/16 v71, 0x0

    .line 2333
    :cond_52
    :try_start_3b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 2304
    .end local v81           #os:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v52

    .line 2305
    .local v52, e:Ljava/io/FileNotFoundException;
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2306
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2307
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_20

    .line 2309
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_53
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2314
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(7) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_3

    .line 2317
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2738
    :try_start_3c
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_12

    goto/16 :goto_0

    .line 2740
    :catch_12
    move-exception v52

    .line 2742
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2333
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v3

    :try_start_3d
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2343
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :catch_13
    move-exception v52

    .line 2344
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@  ERROR: close file failed!!! (6)-(7)-(1)"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_3

    .line 2348
    const/16 v61, 0x0

    .line 2349
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :try_start_3e
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_1a

    .line 2719
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catch_14
    move-exception v52

    goto/16 :goto_8

    .line 2368
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :catch_15
    move-exception v52

    .line 2370
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File duplicate parse Media: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_14

    goto/16 :goto_1b

    .line 2736
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catchall_7
    move-exception v3

    goto/16 :goto_f

    .line 2376
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :cond_54
    :try_start_3f
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare to install: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3

    move-object/from16 v72, v71

    .line 2382
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    :goto_21
    :try_start_40
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 2384
    .restart local v39       #cv:Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2386
    const-string/jumbo v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    const-string v3, "mime_type"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    const-string v3, "message_type"

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    const-string v3, "delivery_type"

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2391
    const-string v3, "content_offset"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2392
    const-string v3, "content_url"

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    sget-object v20, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v21, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 2396
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_57

    .line 2397
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2403
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 2405
    .restart local v44       #differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 2406
    .restart local v42       #differential:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 2408
    .restart local v102       #timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 2409
    .restart local v100       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 2410
    .restart local v36       #currentClock:J
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2414
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_22
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 2426
    :goto_23
    if-eqz p6, :cond_55

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2428
    :cond_55
    const-string v3, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2477
    :goto_24
    move-object/from16 v0, v39

    invoke-virtual {v11, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 2478
    if-nez v16, :cond_5b

    .line 2480
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "Insert to DRM db failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2486
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(8) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_d

    .line 2489
    const/16 v71, 0x0

    .line 2737
    if-eqz v62, :cond_1

    .line 2738
    :try_start_41
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_16

    goto/16 :goto_0

    .line 2740
    :catch_16
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2412
    .end local v52           #e:Ljava/lang/Exception;
    :cond_56
    :try_start_42
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_22

    .line 2416
    :cond_57
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_23

    .line 2432
    :cond_58
    move/from16 v8, p5

    .line 2433
    .restart local v8       #newDestination:I
    const/16 v29, 0x0

    .line 2434
    .restart local v29       #checked:Z
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getSupportedStorages()I

    move-result v97

    .line 2436
    .restart local v97       #supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_59

    .line 2438
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2441
    const/4 v8, 0x0

    .line 2442
    const/16 v29, 0x1

    .line 2446
    :cond_59
    if-nez v29, :cond_5a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_5a

    .line 2448
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2451
    const/4 v8, 0x7

    .line 2455
    :cond_5a
    const-string v3, "Destination"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2456
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    sparse-switch v8, :sswitch_data_1

    .line 2469
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2463
    :sswitch_2
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2466
    :sswitch_3
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2495
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    :cond_5b
    const-string v3, "_data"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2498
    const/16 v25, 0x0

    .line 2501
    .local v25, boundary_length:I
    invoke-static {v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_5e

    .line 2503
    :cond_5c
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v34

    .line 2504
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2507
    .restart local v94       #stream:Ljava/io/FileInputStream;
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_d

    .line 2508
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2510
    :try_start_43
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_8

    .line 2512
    :try_start_44
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 2641
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5d
    :goto_25
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_68

    .line 2644
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(11) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_d

    .line 2647
    const/16 v71, 0x0

    .line 2737
    if-eqz v62, :cond_1

    .line 2738
    :try_start_45
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_17

    goto/16 :goto_0

    .line 2740
    :catch_17
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2512
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v3

    :try_start_46
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2515
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5e
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_5f

    .line 2517
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_d

    .line 2518
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2520
    :try_start_47
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_9

    move-result v25

    .line 2522
    :try_start_48
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto :goto_25

    :catchall_9
    move-exception v3

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2525
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_5f
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_67

    .line 2526
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_60

    .line 2528
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "Install rights of combine delivery failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2534
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(9) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_d

    .line 2537
    const/16 v71, 0x0

    .line 2737
    if-eqz v62, :cond_1

    .line 2738
    :try_start_49
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_18

    goto/16 :goto_0

    .line 2740
    :catch_18
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2545
    .end local v52           #e:Ljava/lang/Exception;
    :cond_60
    :try_start_4a
    const-string v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2548
    .restart local v85       #platform:Ljava/lang/String;
    if-eqz v85, :cond_61

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2549
    :cond_61
    const/16 v86, 0x0

    .line 2554
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :goto_26
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_62

    if-eqz v86, :cond_66

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2569
    :cond_62
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ saveFile for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    const/16 v88, 0x0

    .line 2574
    .restart local v88       #repeat:I
    :goto_27
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_5d

    .line 2576
    if-ltz v88, :cond_64

    .line 2577
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2578
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2581
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v98

    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_d

    move-result v25

    .line 2584
    :try_start_4b
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1c

    .line 2593
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_28
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_65

    .line 2594
    add-int/lit8 v88, v88, 0x1

    goto :goto_27

    .line 2551
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    :cond_63
    :try_start_4c
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto :goto_26

    .line 2586
    .restart local v88       #repeat:I
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_a
    move-exception v3

    throw v3

    .line 2590
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_64
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v25

    goto :goto_28

    .line 2597
    :cond_65
    const/16 v88, 0x3

    goto :goto_27

    .line 2606
    .end local v88           #repeat:I
    :cond_66
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ saveFile for NORMAL case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_d

    .line 2613
    :try_start_4d
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Ljava/lang/String;Landroid/drm/mobile1/DrmRawContent;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_b

    move-result v25

    goto/16 :goto_25

    .line 2615
    :catchall_b
    move-exception v3

    :try_start_4e
    throw v3

    .line 2625
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :cond_67
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "Unknown method."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2631
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(10) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_d

    .line 2634
    const/16 v71, 0x0

    .line 2737
    if-eqz v62, :cond_1

    .line 2738
    :try_start_4f
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_19

    goto/16 :goto_0

    .line 2740
    :catch_19
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2651
    .end local v52           #e:Ljava/lang/Exception;
    :cond_68
    :try_start_50
    new-instance v71, Landroid/content/Intent;

    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_d

    .line 2652
    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v71

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2654
    sget-object v21, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 2655
    .local v27, c_title:Landroid/database/Cursor;
    if-eqz v27, :cond_6a

    .line 2656
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_69

    .line 2657
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2658
    const-string/jumbo v3, "title"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v103

    .line 2659
    .local v103, titleIdIndex:I
    move-object/from16 v0, v27

    move/from16 v1, v103

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 2661
    .local v80, newTitle:Ljava/lang/String;
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newTitle:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    if-eqz v80, :cond_69

    .line 2664
    const-string/jumbo v3, "title"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2665
    const-string/jumbo v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    .end local v80           #newTitle:Ljava/lang/String;
    .end local v103           #titleIdIndex:I
    :cond_69
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2672
    :cond_6a
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 2685
    invoke-static/range {v12 .. v18}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 2687
    .restart local v109       #values:Landroid/content/ContentValues;
    if-eqz v109, :cond_6b

    .line 2688
    const-string v3, "album_id"

    const-string v5, "album_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2689
    const-string v3, "artist_id"

    const-string v5, "artist_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2691
    const-string/jumbo v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    const-string/jumbo v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2692
    const-string/jumbo v3, "title"

    const-string/jumbo v5, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    :cond_6b
    if-eqz v18, :cond_6e

    .line 2703
    const-string v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_6c
    :goto_29
    const-string v3, "content_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    const-string v3, "content_boundary_offset"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2717
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 2737
    if-eqz v62, :cond_6d

    .line 2738
    :try_start_52
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1f

    .line 2751
    :cond_6d
    :goto_2a
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(20) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2704
    .restart local v109       #values:Landroid/content/ContentValues;
    :cond_6e
    :try_start_53
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SupportForwardLockOnly()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2705
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_6c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/32 v14, 0x4b000

    cmp-long v3, v12, v14

    if-gez v3, :cond_6c

    .line 2706
    const-string v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_3

    goto :goto_29

    .line 2252
    .end local v25           #boundary_length:I
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v109           #values:Landroid/content/ContentValues;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v85       #platform:Ljava/lang/String;
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :catch_1a
    move-exception v3

    .line 2254
    const/16 v35, 0x0

    .line 2255
    :try_start_54
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_4

    goto/16 :goto_1d

    .line 2274
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catch_1b
    move-exception v3

    goto/16 :goto_1f

    .line 2585
    .end local v28           #checkFile:Ljava/io/File;
    .end local v35           #createFile:Ljava/io/File;
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v71           #intent:Landroid/content/Intent;
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    .restart local v25       #boundary_length:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1c
    move-exception v3

    goto/16 :goto_28

    .line 2740
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v72           #intent:Landroid/content/Intent;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    .end local v105           #transferEncoding:I
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :catch_1d
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v5, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1900
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v77       #method:I
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v105       #transferEncoding:I
    :catchall_c
    move-exception v3

    :goto_2b
    if-eqz v67, :cond_6f

    .line 1901
    :try_start_55
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1902
    const/16 v67, 0x0

    .line 1904
    :cond_6f
    if-eqz v73, :cond_70

    .line 1905
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1906
    const/16 v73, 0x0

    .line 1915
    :cond_70
    if-eqz v63, :cond_71

    .line 1916
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1917
    const/16 v63, 0x0

    .line 1919
    :cond_71
    if-eqz v65, :cond_72

    .line 1920
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1921
    const/16 v65, 0x0

    .line 1924
    :cond_72
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1925
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1927
    :cond_73
    if-eqz v74, :cond_2e

    .line 1931
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_3

    .line 1933
    const/16 v71, 0x0

    .line 2737
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2738
    :try_start_56
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_1e

    goto/16 :goto_0

    .line 2740
    :catch_1e
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2740
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v82           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v25       #boundary_length:I
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v27       #c_title:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v50       #duplicate:Z
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1f
    move-exception v52

    .line 2742
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1900
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v84           #overwrite:Z
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v82       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v3

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_e
    move-exception v3

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_f
    move-exception v3

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .line 1896
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :catch_20
    move-exception v52

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_21
    move-exception v52

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_22
    move-exception v52

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v41           #deleteRights:Z
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v84       #overwrite:Z
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_74
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    goto/16 :goto_16

    .end local v16           #uri:Landroid/net/Uri;
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_75
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    move-object/from16 v72, v71

    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    goto/16 :goto_21

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v26           #c:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_76
    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 1526
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 2460
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static final addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 91
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 2876
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "********addDrmFileWithoutRights"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 2881
    :cond_0
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "addDrmFile input error."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    const/16 v53, 0x0

    .line 3931
    :cond_1
    :goto_0
    return-object v53

    .line 2893
    :cond_2
    const/4 v4, 0x7

    move/from16 v0, p5

    if-eq v0, v4, :cond_3

    .line 2896
    const/16 p5, 0x0

    .line 2899
    :cond_3
    const/16 v53, 0x0

    .line 2900
    .local v53, intent:Landroid/content/Intent;
    const/16 v45, 0x0

    .line 2903
    .local v45, fin:Ljava/io/FileInputStream;
    const-string v4, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2906
    :cond_4
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "Rights object installation is not supported via this method"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    const/16 v53, 0x0

    goto :goto_0

    .line 2947
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2949
    .local v6, cr:Landroid/content/ContentResolver;
    const/16 v42, 0x0

    .line 2950
    .local v42, fileName:Ljava/lang/String;
    if-nez p2, :cond_7

    .line 2951
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 2960
    :goto_1
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    .line 2961
    .local v32, dot:I
    const/4 v4, -0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_9

    .line 2963
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2977
    :cond_6
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add DRM file : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :try_start_0
    new-instance v46, Ljava/io/FileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    .line 2983
    .end local v45           #fin:Ljava/io/FileInputStream;
    .local v46, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v20, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2987
    .local v20, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v87

    .line 2989
    .local v87, transferEncoding:I
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    move/from16 v0, v87

    if-ne v0, v4, :cond_f

    .line 2994
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    const-string v65, "/data/data/com.android.providers.drm/rights/tmp"

    .line 3000
    .local v65, outputBinaryFilePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3001
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(1) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3008
    const/16 v53, 0x0

    .line 3922
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3923
    :try_start_2
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3925
    :catch_0
    move-exception v38

    .line 3927
    .local v38, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v87           #transferEncoding:I
    :goto_3
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2954
    .end local v32           #dot:I
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_7
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Title is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    move-object/from16 v42, p2

    goto/16 :goto_1

    .line 2965
    .restart local v32       #dot:I
    :cond_8
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 2969
    :cond_9
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 2971
    :cond_a
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2972
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 3011
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_b
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 3013
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v65

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v8

    if-ne v4, v8, :cond_c

    .line 3016
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(2) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3023
    const/16 v53, 0x0

    .line 3922
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3923
    :try_start_4
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 3925
    :catch_1
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3026
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_c
    :try_start_5
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v65

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3028
    .local v5, binaryFile:Ljava/io/File;
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3029
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3030
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 3032
    invoke-static/range {v4 .. v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v6           #cr:Landroid/content/ContentResolver;
    move-result-object v71

    .line 3036
    .local v71, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3037
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3922
    :cond_d
    :goto_4
    if-eqz v46, :cond_e

    .line 3923
    :try_start_7
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1c

    :cond_e
    :goto_5
    move-object/from16 v53, v71

    .line 3045
    goto/16 :goto_0

    .line 3039
    :catch_2
    move-exception v38

    .line 3040
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 3910
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .end local v87           #transferEncoding:I
    :catch_3
    move-exception v38

    move-object/from16 v45, v46

    .line 3916
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v38       #e:Ljava/lang/Exception;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_6
    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 3918
    const/16 v53, 0x0

    .line 3922
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v45, :cond_1

    .line 3923
    :try_start_a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 3925
    :catch_4
    move-exception v38

    .line 3927
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3049
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :cond_f
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v60

    .line 3051
    .local v60, mimeType:Ljava/lang/String;
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mimeType = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v59

    .line 3056
    .local v59, method:I
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "method = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v59

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v21

    .line 3066
    .local v21, contentOffset:I
    const-string/jumbo v4, "video"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v59

    if-eq v0, v4, :cond_11

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_24

    .line 3069
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v60 .. v60}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 3074
    .local v40, extention:Ljava/lang/String;
    new-instance v64, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 3081
    .local v64, outFile:Ljava/io/File;
    const/16 v47, 0x0

    .line 3082
    .local v47, fis:Ljava/io/FileInputStream;
    const/16 v49, 0x0

    .line 3084
    .local v49, fis2:Ljava/io/FileInputStream;
    const/16 v51, 0x0

    .line 3085
    .local v51, fos:Ljava/io/FileOutputStream;
    const/16 v55, 0x0

    .line 3086
    .local v55, is:Ljava/io/InputStream;
    const/16 v56, 0x0

    .line 3093
    .local v56, isTerminated:Z
    :try_start_c
    new-instance v48, Ljava/io/FileInputStream;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 3102
    .end local v47           #fis:Ljava/io/FileInputStream;
    .local v48, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v48

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3106
    .local v80, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v57

    .line 3107
    .local v57, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v57

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 3112
    .local v73, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v27, 0x0

    .line 3113
    .local v27, deleteRights:Z
    if-nez v73, :cond_65

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_65

    .line 3131
    if-eqz v48, :cond_12

    .line 3132
    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1f

    .line 3133
    const/16 v47, 0x0

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    move-object/from16 v48, v47

    .line 3135
    .end local v47           #fis:Ljava/io/FileInputStream;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 3138
    :cond_12
    :try_start_f
    new-instance v47, Ljava/io/FileInputStream;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1f

    .line 3142
    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v57

    move-object/from16 v1, v47

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 3144
    const/16 v27, 0x1

    .line 3150
    :goto_7
    if-eqz v47, :cond_13

    .line 3151
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3152
    const/16 v47, 0x0

    .line 3156
    :cond_13
    if-eqz v73, :cond_1c

    .line 3163
    new-instance v50, Ljava/io/FileInputStream;

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 3164
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .local v50, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v50 .. v50}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v50

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3168
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v80

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v55

    .line 3169
    new-instance v52, Ljava/io/FileOutputStream;

    move-object/from16 v0, v52

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_20

    .line 3171
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .local v52, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v55

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 3173
    if-eqz v27, :cond_14

    .line 3174
    move-object/from16 v0, v57

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 3179
    :cond_14
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    .line 3180
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v8, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 3182
    new-instance v58, Landroid/media/MediaInfo;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 3183
    .local v58, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v88

    .line 3184
    .local v88, type:I
    const/4 v4, 0x1

    move/from16 v0, v88

    if-ne v0, v4, :cond_1b

    .line 3185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 3194
    :cond_15
    :goto_8
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type by MediaInfo: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_21

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .line 3203
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    :goto_9
    if-eqz v51, :cond_16

    .line 3204
    :try_start_13
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3205
    const/16 v51, 0x0

    .line 3207
    :cond_16
    if-eqz v55, :cond_17

    .line 3208
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3209
    const/16 v55, 0x0

    .line 3218
    :cond_17
    if-eqz v47, :cond_18

    .line 3219
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3220
    const/16 v47, 0x0

    .line 3222
    :cond_18
    if-eqz v49, :cond_19

    .line 3223
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3224
    const/16 v49, 0x0

    .line 3227
    :cond_19
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3228
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 3230
    :cond_1a
    if-eqz v56, :cond_24

    .line 3231
    const/16 v53, 0x0

    .line 3922
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3923
    :try_start_14
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_0

    .line 3925
    :catch_5
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3187
    .end local v38           #e:Ljava/lang/Exception;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v58       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v88       #type:I
    :cond_1b
    const/4 v4, 0x2

    move/from16 v0, v88

    if-ne v0, v4, :cond_15

    .line 3188
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_21

    move-result-object v60

    goto :goto_8

    .line 3197
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v52           #fos:Ljava/io/FileOutputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    :cond_1c
    :try_start_16
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type from DRM header: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_9

    .line 3199
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_6
    move-exception v38

    .line 3200
    .restart local v38       #e:Ljava/lang/Exception;
    :goto_a
    :try_start_17
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 3201
    const/16 v56, 0x1

    .line 3203
    if-eqz v51, :cond_1d

    .line 3204
    :try_start_18
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3205
    const/16 v51, 0x0

    .line 3207
    :cond_1d
    if-eqz v55, :cond_1e

    .line 3208
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3209
    const/16 v55, 0x0

    .line 3218
    :cond_1e
    if-eqz v47, :cond_1f

    .line 3219
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3220
    const/16 v47, 0x0

    .line 3222
    :cond_1f
    if-eqz v49, :cond_20

    .line 3223
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3224
    const/16 v49, 0x0

    .line 3227
    :cond_20
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3228
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 3230
    :cond_21
    if-eqz v56, :cond_24

    .line 3231
    const/16 v53, 0x0

    .line 3922
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3923
    :try_start_19
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    .line 3925
    :catch_7
    move-exception v38

    .line 3927
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3203
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_22
    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 3921
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v40           #extention:Ljava/lang/String;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v64           #outFile:Ljava/io/File;
    .end local v87           #transferEncoding:I
    :catchall_0
    move-exception v4

    move-object/from16 v45, v46

    .line 3922
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_b
    if-eqz v45, :cond_23

    .line 3923
    :try_start_1b
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 3921
    :cond_23
    :goto_c
    throw v4

    .line 3237
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_24
    :try_start_1c
    const-string v22, ""

    .line 3239
    .local v22, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3242
    .local v7, contentUri:Landroid/net/Uri;
    const-string v4, "audio/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3243
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 3259
    :goto_d
    const/16 v36, 0x0

    .line 3260
    .local v36, duplicate:Z
    const/16 v66, 0x0

    .line 3261
    .local v66, overwrite:Z
    const/16 v89, 0x0

    .line 3263
    .local v89, uri:Landroid/net/Uri;
    sget-object v8, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v9, "content_url=?"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p4, v10, v4

    const-string v11, "_id"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3264
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_64

    .line 3265
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_63

    .line 3269
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " duplicated."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3272
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 3273
    .local v19, columnIdIndex:I
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 3274
    .local v18, columnId:I
    const-string v4, "_data"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 3275
    .local v44, filePathIndex:I
    move/from16 v0, v44

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 3276
    .local v43, filePath:Ljava/lang/String;
    const-string/jumbo v4, "title"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    .line 3277
    .local v86, titleInddex:I
    move/from16 v0, v86

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 3278
    .local v35, dup_title:Ljava/lang/String;
    const/16 v34, 0x0

    .line 3280
    .local v34, downloadPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v89

    .line 3281
    new-instance v54, Landroid/content/Intent;

    invoke-direct/range {v54 .. v54}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 3282
    .end local v53           #intent:Landroid/content/Intent;
    .local v54, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v54

    move-object/from16 v1, v89

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3284
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dup_title:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    const-string/jumbo v4, "title"

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3287
    const/16 v36, 0x1

    .line 3293
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    new-instance v41, Ljava/io/File;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3297
    .local v41, f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 3298
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3299
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->delete()Z

    .line 3303
    :cond_25
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_2d

    .line 3313
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 3315
    if-eqz v34, :cond_26

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3316
    :cond_26
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 3319
    const/16 v53, 0x0

    .line 3922
    if-eqz v46, :cond_1

    .line 3923
    :try_start_1e
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_0

    .line 3925
    :catch_8
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3244
    .end local v15           #c:Landroid/database/Cursor;
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_27
    :try_start_1f
    const-string v4, "image/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3245
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3246
    :cond_28
    const-string/jumbo v4, "video/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3247
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3248
    :cond_29
    const-string v4, "application/java-archive"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3249
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3252
    :cond_2a
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported mime type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 3255
    const/16 v53, 0x0

    .line 3922
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3923
    :try_start_20
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    goto/16 :goto_0

    .line 3925
    :catch_9
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3322
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2b
    :try_start_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 3358
    :goto_e
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    new-instance v41, Ljava/io/File;

    .end local v41           #f:Ljava/io/File;
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3365
    .restart local v41       #f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3367
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "File exists, use a new name"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 3370
    .local v39, ext:I
    const/16 v69, 0x0

    .line 3371
    .local v69, prefix:Ljava/lang/String;
    const/16 v79, 0x0

    .line 3372
    .local v79, suffix:Ljava/lang/String;
    if-lez v39, :cond_30

    .line 3373
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 3374
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    .line 3379
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "---"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    move-object/from16 v0, v79

    invoke-static {v4, v0, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v61

    .line 3381
    .local v61, newFile:Ljava/io/File;
    invoke-virtual/range {v61 .. v61}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v43

    .line 3383
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    .end local v39           #ext:I
    .end local v61           #newFile:Ljava/io/File;
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    :cond_2c
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 3390
    .local v26, cv:Landroid/content/ContentValues;
    sget-object v9, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 3392
    .local v76, stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_32

    .line 3393
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 3399
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3401
    .local v31, differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 3402
    .local v29, differential:J
    const-string/jumbo v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 3403
    .local v84, timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 3404
    .local v82, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 3405
    .local v24, currentClock:J
    const-string v4, "date_modified"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3406
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3411
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_10
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 3417
    :goto_11
    const/16 v66, 0x1

    .line 3419
    const-string v4, "existence"

    const-string v8, "exist"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3421
    const-string v4, "_data"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3428
    const-string v4, "/"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v74

    .line 3429
    .local v74, slashPos:I
    add-int/lit8 v4, v74, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 3431
    .local v33, downloadName:Ljava/lang/String;
    const-string v4, "bucket_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v89

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .local v9, uri:Landroid/net/Uri;
    move-object/from16 v53, v54

    .line 3436
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v33           #downloadName:Ljava/lang/String;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v74           #slashPos:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .restart local v53       #intent:Landroid/content/Intent;
    :goto_12
    :try_start_22
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3438
    if-eqz v36, :cond_33

    if-nez v66, :cond_33

    .line 3440
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "File is duplicated and exist."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 3922
    if-eqz v46, :cond_1

    .line 3923
    :try_start_23
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 3925
    :catch_a
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3344
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2d
    :try_start_24
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 3346
    if-eqz v34, :cond_2e

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3347
    :cond_2e
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    .line 3350
    const/16 v53, 0x0

    .line 3922
    if-eqz v46, :cond_1

    .line 3923
    :try_start_25
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    goto/16 :goto_0

    .line 3925
    :catch_b
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3353
    .end local v38           #e:Ljava/lang/Exception;
    :cond_2f
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_e

    .line 3376
    .restart local v39       #ext:I
    .restart local v69       #prefix:Ljava/lang/String;
    .restart local v79       #suffix:Ljava/lang/String;
    :cond_30
    move-object/from16 v69, v42

    .line 3377
    const-string v79, ""

    goto/16 :goto_f

    .line 3408
    .end local v39           #ext:I
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :cond_31
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3409
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_10

    .line 3910
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catch_c
    move-exception v38

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_6

    .line 3413
    .end local v45           #fin:Ljava/io/FileInputStream;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_32
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3414
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c

    goto/16 :goto_11

    .line 3921
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v4

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 3444
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    :cond_33
    if-eqz v36, :cond_44

    if-eqz v66, :cond_44

    .line 3446
    :try_start_27
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "Overwrite the file."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    .line 3452
    .local v37, duplicatePath:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3453
    .local v17, checkFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_34

    .line 3454
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 3459
    :cond_34
    invoke-static/range {v60 .. v60}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_39

    .line 3462
    :cond_35
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3465
    .local v77, stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3466
    .local v63, os:Ljava/io/FileOutputStream;
    if-nez v63, :cond_38

    .line 3467
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 3588
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_36
    :goto_13
    :try_start_28
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e

    move-object/from16 v45, v46

    .line 3599
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_14
    :try_start_29
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3600
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10

    .line 3922
    :cond_37
    :goto_15
    if-eqz v45, :cond_1

    .line 3923
    :try_start_2a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_d

    goto/16 :goto_0

    .line 3925
    :catch_d
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3470
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :cond_38
    :try_start_2b
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    .line 3472
    :try_start_2c
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 3473
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto :goto_13

    .line 3472
    :catchall_2
    move-exception v4

    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 3473
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    .line 3472
    throw v4

    .line 3476
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_39
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3478
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_3a

    .line 3488
    :cond_3a
    const-string v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 3491
    .local v67, platform:Ljava/lang/String;
    if-eqz v67, :cond_3b

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 3492
    :cond_3b
    const/16 v68, 0x0

    .line 3497
    .local v68, platformLowerCase:Ljava/lang/String;
    :goto_16
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_3c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_3c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_3c

    if-eqz v68, :cond_42

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 3512
    :cond_3c
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ save Duplicate File for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_3

    .line 3516
    :try_start_2d
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3518
    .local v23, createFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    move-result v4

    if-nez v4, :cond_3d

    .line 3520
    :try_start_2e
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18

    .line 3523
    const/16 v23, 0x0

    .line 3524
    :try_start_2f
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3528
    :cond_3d
    :goto_17
    const/16 v70, 0x0

    .line 3529
    .local v70, repeat:I
    const/16 v78, 0x0

    .line 3530
    .local v78, success:Z
    const/16 v72, 0x0

    .line 3532
    .local v72, resultSaveFile:I
    :goto_18
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_41

    .line 3534
    if-ltz v70, :cond_3f

    .line 3535
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3536
    .local v81, tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3539
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v80

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    move-result v72

    .line 3542
    :try_start_30
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_19

    .line 3551
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_19
    const/4 v4, -0x1

    move/from16 v0, v72

    if-ne v0, v4, :cond_40

    .line 3552
    add-int/lit8 v70, v70, 0x1

    goto :goto_18

    .line 3494
    .end local v23           #createFile:Ljava/io/File;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_3e
    :try_start_31
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_16

    .line 3523
    .restart local v23       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v4

    const/16 v23, 0x0

    .line 3524
    :try_start_32
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3523
    throw v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4

    .line 3563
    .end local v23           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v4

    :try_start_33
    throw v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3

    .line 3544
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v4

    :try_start_34
    throw v4

    .line 3548
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_3f
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4

    move-result v72

    goto :goto_19

    .line 3555
    :cond_40
    const/16 v70, 0x3

    .line 3556
    const/16 v78, 0x1

    goto :goto_18

    .line 3560
    :cond_41
    if-nez v78, :cond_36

    .line 3561
    const/16 v53, 0x0

    goto/16 :goto_13

    .line 3567
    .end local v23           #createFile:Ljava/io/File;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_42
    :try_start_35
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    .line 3568
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_36

    .line 3574
    const/4 v4, -0x1

    :try_start_36
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    move-result v8

    if-ne v4, v8, :cond_43

    .line 3576
    const/16 v53, 0x0

    .line 3580
    :cond_43
    :try_start_37
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_13

    :catchall_6
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3589
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :catch_e
    move-exception v38

    .line 3590
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@  ERROR: close file failed!!! (addDrmFileWithoutRights)"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 3594
    const/16 v45, 0x0

    .line 3595
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :try_start_38
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_14

    .line 3910
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catch_f
    move-exception v38

    goto/16 :goto_6

    .line 3602
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :catch_10
    move-exception v38

    .line 3604
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File duplicate parse Media: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_f

    goto/16 :goto_15

    .line 3921
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catchall_7
    move-exception v4

    goto/16 :goto_b

    .line 3610
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :cond_44
    :try_start_39
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare to install: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    move-object/from16 v54, v53

    .line 3616
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    :goto_1a
    :try_start_3a
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 3618
    .restart local v26       #cv:Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3620
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3622
    const-string v4, "mime_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3623
    const-string v4, "message_type"

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    const-string v4, "delivery_type"

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3625
    const-string v4, "content_offset"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3626
    const-string v4, "content_url"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    sget-object v9, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    .end local v9           #uri:Landroid/net/Uri;
    sget-object v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 3631
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_46

    .line 3632
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3638
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3639
    .restart local v31       #differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 3640
    .restart local v29       #differential:J
    const-string/jumbo v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 3641
    .restart local v84       #timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 3642
    .restart local v82       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 3643
    .restart local v24       #currentClock:J
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3647
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_1b
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 3653
    :goto_1c
    const-string v4, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3656
    move-object/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 3657
    .restart local v9       #uri:Landroid/net/Uri;
    if-nez v9, :cond_47

    .line 3659
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "Insert to DRM db failed."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_c

    .line 3662
    const/16 v53, 0x0

    .line 3922
    if-eqz v46, :cond_1

    .line 3923
    :try_start_3b
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_11

    goto/16 :goto_0

    .line 3925
    :catch_11
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3645
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    :cond_45
    :try_start_3c
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1b

    .line 3649
    :cond_46
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1c

    .line 3664
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_47
    const/4 v14, 0x0

    .line 3668
    .local v14, boundary_length:I
    invoke-static/range {v60 .. v60}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_4a

    .line 3670
    :cond_48
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v22

    .line 3671
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3674
    .restart local v77       #stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_c

    .line 3675
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3677
    :try_start_3d
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_8

    .line 3679
    :try_start_3e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_c

    .line 3848
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_49
    :goto_1d
    const/4 v4, -0x1

    if-ne v14, v4, :cond_58

    .line 3849
    const/16 v53, 0x0

    .line 3922
    if-eqz v46, :cond_1

    .line 3923
    :try_start_3f
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_12

    goto/16 :goto_0

    .line 3925
    :catch_12
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3679
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v4

    :try_start_40
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3682
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_4a
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_50

    .line 3692
    sget-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4f

    .line 3694
    new-instance v75, Ljava/io/FileInputStream;

    move-object/from16 v0, v75

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3696
    .local v75, sourceFileInputStream:Ljava/io/FileInputStream;
    new-instance v28, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_c

    .line 3699
    .local v28, destinationFileOutputStream:Ljava/io/FileOutputStream;
    if-eqz v28, :cond_49

    .line 3703
    :try_start_41
    move-object/from16 v0, v75

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_14

    .line 3713
    if-eqz v75, :cond_4b

    .line 3715
    :try_start_42
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3718
    :cond_4b
    if-eqz v28, :cond_49

    .line 3720
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_13

    goto :goto_1d

    .line 3723
    :catch_13
    move-exception v38

    .line 3725
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_43
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_c

    goto :goto_1d

    .line 3705
    .end local v38           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v38

    .line 3707
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_44
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_9

    .line 3713
    if-eqz v75, :cond_4c

    .line 3715
    :try_start_45
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3718
    :cond_4c
    if-eqz v28, :cond_49

    .line 3720
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_15

    goto :goto_1d

    .line 3723
    :catch_15
    move-exception v38

    .line 3725
    :try_start_46
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_c

    goto :goto_1d

    .line 3711
    .end local v38           #e:Ljava/lang/Exception;
    :catchall_9
    move-exception v4

    .line 3713
    if-eqz v75, :cond_4d

    .line 3715
    :try_start_47
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3718
    :cond_4d
    if-eqz v28, :cond_4e

    .line 3720
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_1e

    .line 3711
    :cond_4e
    :goto_1e
    :try_start_48
    throw v4

    .line 3734
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    :cond_4f
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_c

    .line 3735
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3737
    :try_start_49
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_a

    move-result v14

    .line 3739
    :try_start_4a
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_a
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3745
    .end local v63           #os:Ljava/io/FileOutputStream;
    :cond_50
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_57

    .line 3760
    const-string v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 3763
    .restart local v67       #platform:Ljava/lang/String;
    if-eqz v67, :cond_51

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 3764
    :cond_51
    const/16 v68, 0x0

    .line 3769
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :goto_1f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_52

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_52

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_52

    if-eqz v68, :cond_56

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3784
    :cond_52
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ saveFile for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    const/16 v70, 0x0

    .line 3789
    .restart local v70       #repeat:I
    :goto_20
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_49

    .line 3791
    if-ltz v70, :cond_54

    .line 3792
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3793
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3796
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v80

    invoke-static {v0, v1, v4}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_c

    move-result v14

    .line 3799
    :try_start_4b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1a

    .line 3808
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_21
    const/4 v4, -0x1

    if-ne v14, v4, :cond_55

    .line 3809
    add-int/lit8 v70, v70, 0x1

    goto :goto_20

    .line 3766
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    :cond_53
    :try_start_4c
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto :goto_1f

    .line 3801
    .restart local v70       #repeat:I
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_b
    move-exception v4

    throw v4

    .line 3805
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_54
    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v14

    goto :goto_21

    .line 3812
    :cond_55
    const/16 v70, 0x3

    goto :goto_20

    .line 3821
    .end local v70           #repeat:I
    :cond_56
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ saveFile for NORMAL case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_c

    .line 3826
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3828
    :try_start_4d
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_c

    move-result v14

    .line 3831
    :try_start_4e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_c
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3838
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :cond_57
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "Unknown method."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_c

    .line 3841
    const/16 v53, 0x0

    .line 3922
    if-eqz v46, :cond_1

    .line 3923
    :try_start_4f
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_16

    goto/16 :goto_0

    .line 3925
    :catch_16
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3853
    .end local v38           #e:Ljava/lang/Exception;
    :cond_58
    :try_start_50
    new-instance v53, Landroid/content/Intent;

    invoke-direct/range {v53 .. v53}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_c

    .line 3854
    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v53

    move-object/from16 v1, v60

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3856
    sget-object v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3857
    .local v16, c_title:Landroid/database/Cursor;
    if-eqz v16, :cond_5a

    .line 3858
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_59

    .line 3859
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3860
    const-string/jumbo v4, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v85

    .line 3861
    .local v85, titleIdIndex:I
    move-object/from16 v0, v16

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 3863
    .local v62, newTitle:Ljava/lang/String;
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newTitle:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    if-eqz v62, :cond_59

    .line 3866
    const-string/jumbo v4, "title"

    move-object/from16 v0, v53

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3867
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3870
    .end local v62           #newTitle:Ljava/lang/String;
    .end local v85           #titleIdIndex:I
    :cond_59
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3874
    :cond_5a
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3875
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v90

    .line 3876
    .local v90, values:Landroid/content/ContentValues;
    if-eqz v90, :cond_5b

    .line 3877
    const-string v4, "album_id"

    const-string v8, "album_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3878
    const-string v4, "artist_id"

    const-string v8, "artist_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3880
    const-string/jumbo v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5b

    const-string/jumbo v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 3882
    const-string/jumbo v4, "title"

    const-string/jumbo v8, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    :cond_5b
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SupportForwardLockOnly()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3887
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_5c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x4b000

    cmp-long v4, v10, v12

    if-gez v4, :cond_5c

    .line 3888
    const-string v4, "is_ringtone"

    const-string v8, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    .end local v90           #values:Landroid/content/ContentValues;
    :cond_5c
    const-string v4, "content_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    const-string v4, "content_boundary_offset"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3902
    sget-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5d

    .line 3904
    const-string v4, "content_url"

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3905
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 3909
    :cond_5d
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v9, v0, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 3922
    if-eqz v46, :cond_1

    .line 3923
    :try_start_52
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_17

    goto/16 :goto_0

    .line 3925
    :catch_17
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3521
    .end local v14           #boundary_length:I
    .end local v16           #c_title:Landroid/database/Cursor;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v67       #platform:Ljava/lang/String;
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :catch_18
    move-exception v4

    .line 3523
    const/16 v23, 0x0

    .line 3524
    :try_start_53
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_4

    goto/16 :goto_17

    .line 3543
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catch_19
    move-exception v4

    goto/16 :goto_19

    .line 3800
    .end local v17           #checkFile:Ljava/io/File;
    .end local v23           #createFile:Ljava/io/File;
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v53           #intent:Landroid/content/Intent;
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    .restart local v14       #boundary_length:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1a
    move-exception v4

    goto/16 :goto_21

    .line 3925
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v36           #duplicate:Z
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    .end local v87           #transferEncoding:I
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :catch_1b
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3925
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v5       #binaryFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v71       #resultIntent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :catch_1c
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3203
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v21       #contentOffset:I
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v4

    :goto_22
    if-eqz v51, :cond_5e

    .line 3204
    :try_start_54
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3205
    const/16 v51, 0x0

    .line 3207
    :cond_5e
    if-eqz v55, :cond_5f

    .line 3208
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3209
    const/16 v55, 0x0

    .line 3218
    :cond_5f
    if-eqz v47, :cond_60

    .line 3219
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3220
    const/16 v47, 0x0

    .line 3222
    :cond_60
    if-eqz v49, :cond_61

    .line 3223
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3224
    const/16 v49, 0x0

    .line 3227
    :cond_61
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 3228
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_3

    .line 3230
    :cond_62
    if-eqz v56, :cond_22

    .line 3231
    const/16 v53, 0x0

    .line 3922
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3923
    :try_start_55
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_1d

    goto/16 :goto_0

    .line 3925
    :catch_1d
    move-exception v38

    .line 3927
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3723
    .end local v38           #e:Ljava/lang/Exception;
    .end local v40           #extention:Ljava/lang/String;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v64           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v14       #boundary_length:I
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v28       #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .restart local v36       #duplicate:Z
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v75       #sourceFileInputStream:Ljava/io/FileInputStream;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1e
    move-exception v38

    .line 3725
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_56
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_c

    goto/16 :goto_1e

    .line 3203
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_e
    move-exception v4

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_f
    move-exception v4

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_10
    move-exception v4

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .line 3199
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :catch_1f
    move-exception v38

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_20
    move-exception v38

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_21
    move-exception v38

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v27           #deleteRights:Z
    .end local v40           #extention:Ljava/lang/String;
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v64           #outFile:Ljava/io/File;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v66       #overwrite:Z
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_63
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    goto/16 :goto_12

    .end local v9           #uri:Landroid/net/Uri;
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_64
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    move-object/from16 v54, v53

    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    goto/16 :goto_1a

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .restart local v27       #deleteRights:Z
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v64       #outFile:Ljava/io/File;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_65
    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method public static final addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 2839
    const-string v1, "HtcWrapDrmStore"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - BEGIN. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    const/4 v0, 0x0

    .line 2846
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    .line 2847
    invoke-static/range {p0 .. p5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2848
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    .line 2853
    const-string v1, "HtcWrapDrmStore"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - END. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    return-object v0
.end method

.method private static binaryArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "blob"

    .prologue
    const/4 v3, 0x0

    .line 1252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1255
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1258
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1261
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 1262
    return-object v0
.end method

.method private static checkAndCreateFolder(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "checkFolderPath"
    .parameter "setPermission"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7410
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 7432
    :cond_1
    :goto_0
    return v2

    .line 7414
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7417
    .local v0, checkF:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 7418
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7421
    :cond_3
    if-eqz p1, :cond_1

    .line 7422
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 7423
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 7424
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7428
    :catch_0
    move-exception v1

    .line 7429
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7430
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 7432
    goto :goto_0
.end method

.method public static checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 26
    .parameter "context"
    .parameter "buffer"
    .parameter "mediaType"

    .prologue
    .line 903
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "********checkBeforeDownload"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 908
    :cond_0
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-2"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/16 v23, -0x2

    .line 1095
    :goto_0
    return v23

    .line 913
    :cond_1
    sget-boolean v23, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->RELOAD_CUSTOM_SETTING:Z

    if-nez v23, :cond_2

    const/16 v23, 0x1

    sget-boolean v24, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 916
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->handleCutomization(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_1
    const/16 v23, 0x1

    sput-boolean v23, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->RELOAD_CUSTOM_SETTING:Z

    .line 927
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    const/16 v5, 0x800

    .line 929
    .local v5, dataSize:I
    :goto_2
    new-array v4, v5, [B

    .line 931
    .local v4, data:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v5, :cond_6

    .line 934
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    aget-byte v23, p1, v7

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    aget-byte v23, p1, v7

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    aget-byte v23, p1, v7

    const/16 v24, 0x3b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 935
    :cond_3
    const/16 v23, 0x20

    aput-byte v23, v4, v7

    .line 931
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 917
    .end local v4           #data:[B
    .end local v5           #dataSize:I
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 918
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 927
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p1

    array-length v5, v0

    goto :goto_2

    .line 937
    .restart local v4       #data:[B
    .restart local v5       #dataSize:I
    .restart local v7       #i:I
    :cond_5
    aget-byte v23, p1, v7

    aput-byte v23, v4, v7

    goto :goto_4

    .line 941
    :cond_6
    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 942
    .local v21, segment:Ljava/lang/String;
    const-string v18, "content-type: "

    .line 943
    .local v18, pattern:Ljava/lang/String;
    const/4 v2, 0x0

    .line 945
    .local v2, MIMEType:Ljava/lang/String;
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 946
    const-string v23, "content-type: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 947
    .local v12, indexOfPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_7

    .line 949
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 953
    :cond_7
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v8, v12, v23

    .line 954
    .local v8, indexOfContentType:I
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 955
    .local v22, subString:Ljava/lang/String;
    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 956
    .local v13, indexOfReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 957
    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 963
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_8

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->fnIsDisableCombinedDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 968
    :cond_8
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 990
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 991
    .local v16, nextSegment:Ljava/lang/String;
    const-string v23, "content-type: "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 992
    .local v10, indexOfNextPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_a

    .line 994
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 998
    :cond_a
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v9, v10, v23

    .line 999
    .local v9, indexOfNextContentType:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 1000
    .local v17, nextSubString:Ljava/lang/String;
    const/16 v23, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 1001
    .local v11, indexOfNextReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1054
    .end local v8           #indexOfContentType:I
    .end local v9           #indexOfNextContentType:I
    .end local v10           #indexOfNextPattern:I
    .end local v11           #indexOfNextReturn:I
    .end local v12           #indexOfPattern:I
    .end local v13           #indexOfReturn:I
    .end local v16           #nextSegment:Ljava/lang/String;
    .end local v17           #nextSubString:Ljava/lang/String;
    .end local v22           #subString:Ljava/lang/String;
    :cond_b
    :goto_5
    if-nez v2, :cond_11

    .line 1056
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 1005
    :cond_c
    const-string v23, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1011
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_d

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->fnIsDisableSeparateDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1016
    :cond_d
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 1037
    :cond_e
    const/16 v23, 0x1

    aget-byte v3, v4, v23

    .line 1039
    .local v3, contentTypeLen:I
    :try_start_1
    new-instance v2, Ljava/lang/String;

    .end local v2           #MIMEType:Ljava/lang/String;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-direct {v2, v4, v0, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2       #MIMEType:Ljava/lang/String;
    goto :goto_5

    .line 1040
    .end local v2           #MIMEType:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1042
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 1046
    .end local v3           #contentTypeLen:I
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #MIMEType:Ljava/lang/String;
    :cond_f
    const-string v23, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_10

    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1049
    :cond_10
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1061
    :cond_11
    new-instance v14, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1063
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    .line 1065
    .local v20, result:Z
    const-string v23, "HtcWrapDrmStore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Check Before Download MIME = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const-string v23, "application/java-archive"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1069
    const/16 v20, 0x1

    .line 1086
    :goto_6
    if-eqz v20, :cond_19

    .line 1088
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1070
    :cond_12
    const-string v23, "image/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 1071
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1073
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_13

    const/16 v20, 0x1

    .line 1074
    :goto_7
    goto :goto_6

    .line 1073
    :cond_13
    const/16 v20, 0x0

    goto :goto_7

    .line 1074
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_14
    const-string v23, "audio/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 1075
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1077
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_15

    const/16 v20, 0x1

    .line 1078
    :goto_8
    goto :goto_6

    .line 1077
    :cond_15
    const/16 v20, 0x0

    goto :goto_8

    .line 1078
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_16
    const-string/jumbo v23, "video/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 1079
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1081
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_17

    const/16 v20, 0x1

    .line 1082
    :goto_9
    goto/16 :goto_6

    .line 1081
    :cond_17
    const/16 v20, 0x0

    goto :goto_9

    .line 1083
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 1093
    :cond_19
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-8"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/16 v23, -0x8

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;Landroid/net/Uri;)I
    .locals 35
    .parameter "cr"
    .parameter "dcr"
    .parameter "contentUri"

    .prologue
    .line 6051
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "********checkExpiration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6052
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6055
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6057
    :cond_0
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (1): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6059
    const/4 v3, -0x2

    .line 6226
    :goto_0
    return v3

    .line 6062
    :cond_1
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 6063
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_2

    .line 6065
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6067
    const/4 v3, -0x6

    goto :goto_0

    .line 6068
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 6070
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6072
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6073
    const/4 v3, -0x2

    goto :goto_0

    .line 6076
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6077
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 6078
    .local v10, columnIndex:I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 6079
    .local v20, filePath:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6081
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v24

    .line 6082
    .local v24, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v24, :cond_4

    .line 6084
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (4): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6086
    const/4 v3, -0x3

    goto :goto_0

    .line 6092
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->isNoConstraint()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6093
    const/4 v3, 0x0

    goto :goto_0

    .line 6099
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getInterval()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    .line 6101
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " checkExpiration (5): All constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6102
    const/4 v3, -0x4

    goto :goto_0

    .line 6107
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 6109
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 6111
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (6): counts expired"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6113
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6115
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6119
    :cond_8
    const/16 v23, 0x0

    .line 6120
    .local v23, permissionType:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6121
    const/16 v23, 0x2

    .line 6130
    :cond_9
    :goto_1
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6132
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_d

    .line 6134
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (7): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    const/4 v3, -0x6

    goto/16 :goto_0

    .line 6122
    .end local v9           #c:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6123
    const/16 v23, 0x1

    goto :goto_1

    .line 6124
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 6125
    const/16 v23, 0x1

    goto :goto_1

    .line 6126
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6127
    const/16 v23, 0x3

    goto :goto_1

    .line 6137
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 6139
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (8): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6141
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6142
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6145
    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6146
    const-string/jumbo v3, "time_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 6147
    .local v31, syncTimeColumnId:I
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 6148
    .local v29, syncTime:J
    const-string v3, "clock_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 6149
    .local v28, syncClockColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 6150
    .local v26, syncClock:J
    const-string/jumbo v3, "timezone_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 6151
    .local v34, syncTimeZoneColumnId:I
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 6152
    .local v32, syncTimeZone:J
    const-string/jumbo v3, "time_differential"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 6153
    .local v14, differentColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 6154
    .local v15, differential:J
    const-string v3, "network_sync"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 6155
    .local v22, network_sync:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 6156
    .local v21, networkSync:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6158
    const-wide/16 v3, 0x0

    cmp-long v3, v29, v3

    if-eqz v3, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-nez v3, :cond_10

    .line 6160
    :cond_f
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (9): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6162
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6165
    :cond_10
    if-nez v21, :cond_11

    .line 6167
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (10): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6169
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6170
    :cond_11
    const-string v3, "TRUE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 6172
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (11): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6178
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 6179
    .local v12, date:J
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 6181
    .local v18, drmDate:Ljava/util/Date;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (12): Current Date-Time (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6184
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v25

    .line 6185
    .local v25, startDate:Ljava/util/Date;
    if-eqz v25, :cond_13

    .line 6187
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (13): Start Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6189
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 6191
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (14): start date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6197
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v19

    .line 6198
    .local v19, endDate:Ljava/util/Date;
    if-eqz v19, :cond_14

    .line 6200
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (15): End Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6202
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 6204
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (16): end date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6206
    new-instance v17, Ljava/util/Date;

    sub-long v3, v12, v15

    sub-long v3, v3, v32

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 6207
    .local v17, drmClock:Ljava/util/Date;
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    .line 6208
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6213
    .end local v17           #drmClock:Ljava/util/Date;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getInterval()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    .line 6215
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (17): Interval constraint, pass anyway"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6218
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6222
    :cond_15
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (18): Unknown Error!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6226
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/net/Uri;Landroid/app/Activity;)I
    .locals 1
    .parameter "uri"
    .parameter "activity"

    .prologue
    .line 7969
    const/4 v0, 0x0

    return v0
.end method

.method public static final checkExpiration(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1
    .parameter "fileName"
    .parameter "activity"

    .prologue
    .line 7977
    const/4 v0, 0x0

    return v0
.end method

.method public static checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 11
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 7173
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7174
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 7176
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "checkFileExistence query DRM db failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 7197
    :goto_0
    return v0

    .line 7179
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 7181
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "checkFileExistence no record."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 7184
    goto :goto_0

    .line 7186
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7187
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7188
    .local v8, fileColumnIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7189
    .local v9, fileName:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7191
    const-string v0, "HtcWrapDrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check if "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7193
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7194
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7195
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    .line 7197
    goto :goto_0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7985
    const/4 v0, 0x0

    return v0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 41
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "permissionType"

    .prologue
    .line 6243
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "********consumeRights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6246
    const/4 v9, 0x0

    .line 6247
    .local v9, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 6248
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6255
    :goto_0
    const/16 v22, 0x0

    .line 6256
    .local v22, filePath:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 6258
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(1): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6260
    const/4 v3, -0x6

    .line 6435
    :goto_1
    return v3

    .line 6251
    .end local v22           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 6261
    .restart local v22       #filePath:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 6263
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6265
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6266
    const/4 v3, -0x6

    goto :goto_1

    .line 6267
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 6268
    if-nez p2, :cond_3

    .line 6270
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6272
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6273
    const/4 v3, -0x2

    goto :goto_1

    .line 6275
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6276
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6277
    .local v23, filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6278
    move-object/from16 v22, p2

    .line 6293
    :cond_4
    :goto_2
    if-nez v22, :cond_7

    .line 6295
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(4): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6297
    const/4 v3, -0x1

    goto :goto_1

    .line 6280
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6281
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6282
    move-object/from16 v22, p2

    .line 6283
    goto :goto_2

    .line 6288
    .end local v23           #filePathColumnId:I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6289
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6290
    .restart local v23       #filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 6300
    :cond_7
    const-string v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 6301
    .local v27, messageTypeColumnId:I
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 6302
    .local v26, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6303
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 6304
    .local v14, deliveryType:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6306
    const/4 v3, 0x1

    if-ne v14, v3, :cond_8

    .line 6307
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6311
    :cond_8
    :try_start_0
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6312
    .local v21, file:Ljava/io/File;
    if-nez v21, :cond_9

    .line 6314
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(5): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6316
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 6318
    :cond_9
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6319
    .local v24, fis:Ljava/io/InputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v3, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6320
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v25

    .line 6321
    .local v25, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 6323
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_a

    .line 6325
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(7): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6327
    const/4 v3, -0x3

    goto/16 :goto_1

    .line 6330
    :cond_a
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v10

    .line 6331
    .local v10, constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-nez v10, :cond_b

    .line 6333
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(9): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6335
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 6339
    :cond_b
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 6345
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " @@@@@     consumeRights(10): NO Constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6348
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6353
    :cond_c
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v3

    if-ltz v3, :cond_e

    .line 6354
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->consumeRights(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6355
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6358
    :cond_d
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(11): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6360
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 6365
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 6367
    .local v31, stamp:Landroid/database/Cursor;
    if-nez v31, :cond_f

    .line 6369
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights query stamp failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6371
    const/4 v3, -0x6

    goto/16 :goto_1

    .line 6372
    :cond_f
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_10

    .line 6374
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(12): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6376
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 6377
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6380
    :cond_10
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6381
    const-string/jumbo v3, "time_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 6382
    .local v37, syncTimeColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 6383
    .local v35, syncTime:J
    const-string v3, "clock_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 6384
    .local v34, syncClockColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 6385
    .local v32, syncClock:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 6386
    .local v40, syncTimeZoneColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 6387
    .local v38, syncTimeZone:J
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 6388
    .local v16, differentColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 6389
    .local v17, differential:J
    const-string v3, "network_sync"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 6390
    .local v29, network_sync:I
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 6391
    .local v28, networkSync:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 6393
    const-wide/16 v3, 0x0

    cmp-long v3, v35, v3

    if-eqz v3, :cond_11

    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-nez v3, :cond_12

    .line 6395
    :cond_11
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(13): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6400
    :cond_12
    if-nez v28, :cond_13

    .line 6402
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(14): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6404
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6405
    :cond_13
    const-string v3, "TRUE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 6407
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(15): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6409
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6413
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v17

    sub-long v12, v3, v38

    .line 6415
    .local v12, date:J
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncTimeZone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v38, v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6417
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 6418
    .local v19, drmDate:Ljava/util/Date;
    move-object/from16 v0, v30

    move/from16 v1, p3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 6419
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6422
    :cond_15
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(16): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6424
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 6427
    .end local v10           #constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #date:J
    .end local v16           #differentColumnId:I
    .end local v17           #differential:J
    .end local v19           #drmDate:Ljava/util/Date;
    .end local v21           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v25           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #networkSync:Ljava/lang/String;
    .end local v29           #network_sync:I
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v31           #stamp:Landroid/database/Cursor;
    .end local v32           #syncClock:J
    .end local v34           #syncClockColumnId:I
    .end local v35           #syncTime:J
    .end local v37           #syncTimeColumnId:I
    .end local v38           #syncTimeZone:J
    .end local v40           #syncTimeZoneColumnId:I
    :catch_0
    move-exception v20

    .line 6429
    .local v20, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeRights(17): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6433
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(18): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6435
    const/4 v3, -0x1

    goto/16 :goto_1
.end method

.method public static final consumeRights(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 7993
    const/4 v0, 0x0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5506
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 13
    .parameter "cr"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 5435
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********deleteDrmFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5437
    const/4 v6, 0x0

    .line 5438
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 5439
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5445
    :goto_0
    if-nez v6, :cond_1

    .line 5447
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5449
    const/4 v0, -0x6

    .line 5494
    :goto_1
    return v0

    .line 5442
    :cond_0
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 5450
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5452
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5455
    const/4 v0, -0x6

    goto :goto_1

    .line 5458
    :cond_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 5459
    .local v10, filenameColumnId:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5461
    .local v9, filename:Ljava/lang/String;
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 5462
    .local v8, deliveryTypeColumnId:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5464
    .local v7, deliveryType:I
    const-string v0, "message_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 5465
    .local v12, messageTypeColumnId:I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5467
    .local v11, messageType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5494
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 886
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********enforceAccessDrmPermission()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 890
    return-void
.end method

.method private static final fnIsDisableCombinedDeliveryAndSeparateDelivery()Z
    .locals 1

    .prologue
    .line 7304
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v0, :cond_1

    .line 7305
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v0, :cond_0

    .line 7307
    const/4 v0, 0x1

    .line 7314
    :goto_0
    return v0

    .line 7310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7314
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SupportForwardLockOnly()Z

    move-result v0

    goto :goto_0
.end method

.method private static final fnIsDisableCombinedDeliveryOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7326
    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v1, :cond_0

    .line 7328
    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-nez v1, :cond_0

    .line 7330
    const/4 v0, 0x1

    .line 7340
    :cond_0
    return v0
.end method

.method private static final fnIsDisableSeparateDeliveryOnly()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7350
    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v2, :cond_2

    .line 7351
    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v2, :cond_1

    .line 7379
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 7356
    goto :goto_0

    .line 7360
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x88

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 7379
    goto :goto_0
.end method

.method private static getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 1162
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return v0

    .line 1168
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1171
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "no"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "disable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "disabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCipher(Ljavax/crypto/spec/SecretKeySpec;I)Ljavax/crypto/Cipher;
    .locals 6
    .parameter "skeySpec"
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7076
    const/4 v0, 0x0

    .line 7078
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-nez p0, :cond_0

    .line 7080
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "skeySpec == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7115
    :goto_0
    return-object v3

    .line 7083
    :cond_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 7085
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Cipher mode error."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7092
    :cond_1
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 7094
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "f45gt7g83sd56210"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 7096
    .local v2, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v2           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    :goto_1
    move-object v3, v0

    .line 7115
    goto :goto_0

    .line 7098
    :catch_0
    move-exception v1

    .line 7100
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchAlgorithmException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7102
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 7104
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchPaddingException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7106
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 7108
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidKeyException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7110
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 7112
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidAlgorithmParameterException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/wrap/android/provider/DrmCustomizationData;
    .locals 13
    .parameter "context"
    .parameter "categoryName"
    .parameter "moduleName"

    .prologue
    const/4 v2, 0x0

    .line 1187
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1190
    :cond_0
    const-string v12, "The all of context, categoryName and moduleName must be not null. \n"

    .line 1191
    .local v12, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "categoryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "moduleName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1194
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1198
    .end local v12           #msg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1199
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1204
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1205
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_2

    .line 1207
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "The cursor of the content resolver is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v3, "HtcWrapDrmStore"

    const-string/jumbo v4, "uri: content://customization_settings/SettingTable/"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    new-instance v3, Lcom/htc/wrap/android/provider/DrmCustomizationData;

    invoke-direct {v3, v2}, Lcom/htc/wrap/android/provider/DrmCustomizationData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 1245
    :goto_0
    return-object v2

    .line 1214
    :cond_2
    const-string/jumbo v3, "value"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1215
    .local v9, columnIndex:I
    const/4 v3, -0x1

    if-ne v9, v3, :cond_4

    .line 1217
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 1219
    .local v8, columnCount:I
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "The table does not have the column \'value\'"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v8, :cond_3

    .line 1225
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @@@@@     columnName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1228
    :cond_3
    new-instance v3, Lcom/htc/wrap/android/provider/DrmCustomizationData;

    invoke-direct {v3, v2}, Lcom/htc/wrap/android/provider/DrmCustomizationData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_0

    .line 1232
    .end local v8           #columnCount:I
    .end local v11           #i:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1233
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1237
    new-instance v3, Lcom/htc/wrap/android/provider/DrmCustomizationData;

    invoke-direct {v3, v2}, Lcom/htc/wrap/android/provider/DrmCustomizationData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_0

    .line 1242
    :cond_5
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1243
    .local v6, blob:[B
    invoke-static {v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->binaryArrayToBundle([B)Landroid/os/Bundle;

    move-result-object v7

    .line 1244
    .local v7, bundle:Landroid/os/Bundle;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1245
    new-instance v2, Lcom/htc/wrap/android/provider/DrmCustomizationData;

    invoke-direct {v2, v7}, Lcom/htc/wrap/android/provider/DrmCustomizationData;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 7208
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'3\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7210
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 7211
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 7212
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 7213
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 7214
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7215
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 7216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7217
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 7215
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 7220
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7225
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 7223
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 7225
    goto :goto_1
.end method

.method public static getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 7236
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'1\' OR delivery_type=\'2\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7241
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 7242
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 7243
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 7244
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 7245
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7246
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 7247
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7248
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 7246
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 7251
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7256
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 7254
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 7256
    goto :goto_1
.end method

.method public static getDrmAudioConstraint(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7865
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmAudioCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7809
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmAudioStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7921
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 31
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"

    .prologue
    .line 5940
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "********getDrmConstraint (2)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5942
    const/16 v27, 0x0

    .line 5944
    .local v27, res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5945
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 5947
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmConstraint query DRM db failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    const/4 v3, 0x0

    .line 6036
    :goto_0
    return-object v3

    .line 5950
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 5952
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmConstraint no record."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5954
    const/4 v3, 0x0

    goto :goto_0

    .line 5957
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 5958
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 5959
    .local v21, filenameColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5961
    .local v20, filename:Ljava/lang/String;
    const-string v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 5962
    .local v26, messageTypeColumnId:I
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 5964
    .local v25, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 5965
    .local v12, deliveryTypeColumnId:I
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 5967
    .local v11, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 5968
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 5969
    .local v18, fileSize:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5971
    const/4 v3, 0x1

    if-ne v11, v3, :cond_2

    .line 5973
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "FL doesn\'t have constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5975
    const/4 v3, 0x0

    goto :goto_0

    .line 5977
    :cond_2
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5979
    .local v17, file:Ljava/io/File;
    :try_start_0
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5980
    .local v22, fis:Ljava/io/InputStream;
    new-instance v10, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v10, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5981
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v24

    .line 5982
    .local v24, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v29

    .line 5985
    .local v29, rights:Landroid/drm/mobile1/DrmRights;
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " @@@@@ getDrmConstraint (2) - (1)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5988
    if-eqz v29, :cond_7

    .line 5989
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v23

    .line 5991
    .local v23, info:Landroid/drm/mobile1/DrmConstraintInfo;
    if-eqz v23, :cond_6

    .line 5992
    new-instance v28, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5993
    .end local v27           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .local v28, res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    if-eqz v28, :cond_8

    .line 5994
    const-wide/16 v13, 0x0

    .line 5995
    .local v13, differential:J
    const/16 v30, 0x0

    .line 5997
    .local v30, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 5999
    if-eqz v30, :cond_3

    .line 6000
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6001
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 6003
    .local v15, differentialColumnId:I
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v13

    .line 6011
    .end local v15           #differentialColumnId:I
    :cond_3
    if-eqz v30, :cond_4

    .line 6012
    :try_start_2
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 6015
    :cond_4
    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v27, v28

    .line 6026
    .end local v13           #differential:J
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v28           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v27       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    :goto_2
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_3
    move-object/from16 v3, v27

    .line 6036
    goto/16 :goto_0

    .line 6006
    .end local v27           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 6008
    .local v16, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get differential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6011
    if-eqz v30, :cond_4

    .line 6012
    :try_start_5
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 6027
    .end local v16           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v16

    move-object/from16 v27, v28

    .line 6029
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #differential:J
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v16       #e:Ljava/lang/Exception;
    .restart local v27       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    :goto_4
    :try_start_6
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmConstraint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 6031
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    throw v3

    .line 6011
    .end local v27           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v30, :cond_5

    .line 6012
    :try_start_7
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 6011
    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 6031
    :catchall_2
    move-exception v3

    move-object/from16 v27, v28

    .end local v28           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v27       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    goto :goto_5

    .line 6019
    .end local v13           #differential:J
    .end local v30           #stampCursor:Landroid/database/Cursor;
    :cond_6
    :try_start_8
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " @@@@@ NO Drm Constraint Info !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6027
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_2
    move-exception v16

    goto :goto_4

    .line 6023
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " @@@@@ NO Drm Rights !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .end local v27           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v28       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    :cond_8
    move-object/from16 v27, v28

    .end local v28           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v27       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    goto :goto_2
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 36
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 5520
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "********getDrmConstraint without renew call back"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5521
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    const/4 v9, 0x0

    .line 5524
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 5525
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5526
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_1

    .line 5527
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5532
    :goto_0
    if-nez v9, :cond_2

    .line 5534
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5536
    const/4 v10, 0x0

    .line 5698
    :cond_0
    :goto_1
    return-object v10

    .line 5529
    :cond_1
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 5537
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 5538
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5540
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    const/4 v10, 0x0

    goto :goto_1

    .line 5545
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5546
    if-eqz p2, :cond_e

    .line 5547
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 5548
    .local v25, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 5568
    .end local v25           #index:I
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5572
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 5573
    .local v14, deliveryType:I
    const-string v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 5574
    .local v29, messageTypeColumnId:I
    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 5575
    .local v28, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 5576
    .local v23, fileSizeColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 5577
    .local v22, fileSize:I
    const/16 v31, 0x2

    .line 5578
    .local v31, permissionType:I
    if-nez p2, :cond_4

    .line 5579
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 5580
    .local v21, filePathColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5582
    .end local v21           #filePathColumnId:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5584
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5585
    const/16 v31, 0x2

    .line 5601
    :goto_3
    :try_start_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5604
    .local v20, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v14, v4, :cond_5

    const/4 v4, 0x2

    if-ne v14, v4, :cond_13

    .line 5606
    :cond_5
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5614
    .local v24, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v27

    .line 5618
    .local v27, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 5619
    .local v10, constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5620
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v33

    .line 5623
    .local v33, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v33, :cond_6

    const/4 v4, 0x3

    if-ne v14, v4, :cond_6

    .line 5625
    move-object/from16 v13, p0

    .line 5626
    .local v13, context:Landroid/content/Context;
    new-instance v35, Landroid/widget/TextView;

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5627
    .local v35, tv:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.htc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v32

    .line 5628
    .local v32, rc:Landroid/content/res/Resources;
    const v4, 0x20400e8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 5629
    .local v30, notify:Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5630
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x20400e9

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$2;

    move-object/from16 v0, v33

    invoke-direct {v6, v0, v11, v13}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$2;-><init>(Landroid/drm/mobile1/DrmRights;Landroid/drm/mobile1/DrmRawContent;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    new-instance v6, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$1;

    invoke-direct {v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$1;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5663
    .end local v13           #context:Landroid/content/Context;
    .end local v30           #notify:Ljava/lang/String;
    .end local v32           #rc:Landroid/content/res/Resources;
    .end local v35           #tv:Landroid/widget/TextView;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 5665
    if-eqz v33, :cond_9

    .line 5666
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v26

    .line 5667
    .local v26, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    .end local v10           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5668
    .restart local v10       #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    if-eqz v10, :cond_0

    .line 5669
    const-wide/16 v16, 0x0

    .line 5670
    .local v16, differential:J
    const/16 v34, 0x0

    .line 5672
    .local v34, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 5674
    if-eqz v34, :cond_7

    .line 5675
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5676
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 5677
    .local v18, differentialColumnId:I
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 5685
    .end local v18           #differentialColumnId:I
    :cond_7
    if-eqz v34, :cond_8

    .line 5686
    :try_start_2
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 5689
    :cond_8
    :goto_4
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 5693
    .end local v10           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #differential:J
    .end local v20           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v26           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v27           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v33           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v34           #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 5695
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5698
    .end local v19           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5551
    .end local v14           #deliveryType:I
    .end local v15           #deliveryTypeColumnId:I
    .end local v22           #fileSize:I
    .end local v23           #fileSizeColumnId:I
    .end local v28           #messageType:Ljava/lang/String;
    .end local v29           #messageTypeColumnId:I
    .end local v31           #permissionType:I
    .restart local v25       #index:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5554
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5557
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5561
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5562
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5565
    .end local v25           #index:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5587
    .restart local v14       #deliveryType:I
    .restart local v15       #deliveryTypeColumnId:I
    .restart local v22       #fileSize:I
    .restart local v23       #fileSizeColumnId:I
    .restart local v28       #messageType:Ljava/lang/String;
    .restart local v29       #messageTypeColumnId:I
    .restart local v31       #permissionType:I
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5588
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 5590
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5591
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 5593
    :cond_11
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5594
    const/16 v31, 0x3

    goto/16 :goto_3

    .line 5597
    :cond_12
    const/16 v31, 0x2

    goto/16 :goto_3

    .line 5609
    .restart local v20       #file:Ljava/io/File;
    :cond_13
    :try_start_3
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 5611
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5680
    .restart local v10       #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v16       #differential:J
    .restart local v24       #fis:Ljava/io/InputStream;
    .restart local v26       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v27       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v33       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v34       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v19

    .line 5682
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5685
    if-eqz v34, :cond_8

    .line 5686
    :try_start_5
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 5685
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v34, :cond_14

    .line 5686
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 5685
    :cond_14
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/htc/wrap/android/provider/HtcWrapDrmStore$UpdateLicense;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 33
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"
    .parameter "updateLicense"

    .prologue
    .line 5713
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "********getDrmConstraint (1)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5715
    const/4 v9, 0x0

    .line 5716
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 5717
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5718
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    .line 5719
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5724
    :goto_0
    if-nez v9, :cond_1

    .line 5726
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5728
    const/4 v10, 0x0

    .line 5912
    :goto_1
    return-object v10

    .line 5721
    :cond_0
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 5729
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 5730
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5732
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5734
    const/4 v10, 0x0

    goto :goto_1

    .line 5737
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5738
    if-eqz p2, :cond_d

    .line 5739
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 5740
    .local v24, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 5760
    .end local v24           #index:I
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 5764
    .local v14, deliveryTypeColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 5765
    .local v13, deliveryType:I
    const-string v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 5766
    .local v28, messageTypeColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 5767
    .local v27, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 5768
    .local v22, fileSizeColumnId:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 5769
    .local v21, fileSize:I
    const/16 v29, 0x2

    .line 5770
    .local v29, permissionType:I
    if-nez p2, :cond_3

    .line 5771
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 5772
    .local v20, filePathColumnId:I
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5774
    .end local v20           #filePathColumnId:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5776
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5777
    const/16 v29, 0x2

    .line 5793
    :goto_3
    :try_start_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5796
    .local v19, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v13, v4, :cond_4

    const/4 v4, 0x2

    if-ne v13, v4, :cond_12

    .line 5798
    :cond_4
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5806
    .local v23, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v26

    .line 5813
    .local v26, manager:Landroid/drm/mobile1/DrmRightsManager;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5814
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 5817
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_5

    const/4 v4, 0x3

    if-ne v13, v4, :cond_5

    .line 5819
    if-eqz p3, :cond_5

    .line 5820
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v31

    .line 5821
    .local v31, rightsIssuer:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$UpdateLicense;->update(Ljava/lang/String;)V

    .line 5862
    .end local v31           #rightsIssuer:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 5864
    if-eqz v30, :cond_14

    .line 5865
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v25

    .line 5868
    .local v25, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V

    .line 5871
    .local v10, constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5873
    if-eqz v10, :cond_8

    .line 5874
    const-wide/16 v15, 0x0

    .line 5875
    .local v15, differential:J
    const/16 v32, 0x0

    .line 5877
    .local v32, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 5879
    if-eqz v32, :cond_6

    .line 5880
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5881
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 5883
    .local v17, differentialColumnId:I
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v15

    .line 5891
    .end local v17           #differentialColumnId:I
    :cond_6
    if-eqz v32, :cond_7

    .line 5892
    :try_start_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 5895
    :cond_7
    :goto_4
    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->setDisserential(J)V

    .line 5897
    .end local v15           #differential:J
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_8
    monitor-exit v10

    goto/16 :goto_1

    .line 5899
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 5906
    .end local v10           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v19           #file:Ljava/io/File;
    .end local v23           #fis:Ljava/io/InputStream;
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v26           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_0
    move-exception v18

    .line 5908
    .local v18, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    .end local v18           #e:Ljava/lang/Exception;
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5743
    .end local v13           #deliveryType:I
    .end local v14           #deliveryTypeColumnId:I
    .end local v21           #fileSize:I
    .end local v22           #fileSizeColumnId:I
    .end local v27           #messageType:Ljava/lang/String;
    .end local v28           #messageTypeColumnId:I
    .end local v29           #permissionType:I
    .restart local v24       #index:I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5746
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5749
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5753
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5754
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5757
    .end local v24           #index:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5779
    .restart local v13       #deliveryType:I
    .restart local v14       #deliveryTypeColumnId:I
    .restart local v21       #fileSize:I
    .restart local v22       #fileSizeColumnId:I
    .restart local v27       #messageType:Ljava/lang/String;
    .restart local v28       #messageTypeColumnId:I
    .restart local v29       #permissionType:I
    :cond_e
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5780
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 5782
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5783
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 5785
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5786
    const/16 v29, 0x3

    goto/16 :goto_3

    .line 5789
    :cond_11
    const/16 v29, 0x2

    goto/16 :goto_3

    .line 5801
    .restart local v19       #file:Ljava/io/File;
    :cond_12
    :try_start_4
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5803
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5886
    .restart local v10       #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v15       #differential:J
    .restart local v23       #fis:Ljava/io/InputStream;
    .restart local v25       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v26       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v30       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v32       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v18

    .line 5888
    .restart local v18       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5891
    if-eqz v32, :cond_7

    .line 5892
    :try_start_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 5891
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v32, :cond_13

    .line 5892
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 5891
    :cond_13
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5903
    .end local v10           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v15           #differential:J
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_14
    :try_start_7
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint : rights is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8025
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 24
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 6804
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "********getDrmContentStream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6807
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6808
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v20

    .line 6809
    .local v20, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 6810
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    const/16 v22, 0x0

    .line 6811
    .local v22, rights:Landroid/drm/mobile1/DrmRights;
    const/4 v14, 0x0

    .line 6812
    .local v14, drmContentStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 6814
    .local v8, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 6815
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6821
    :goto_0
    if-nez v8, :cond_1

    .line 6823
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream query failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6825
    const/4 v3, 0x0

    .line 6897
    :goto_1
    return-object v3

    .line 6817
    :cond_0
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 6826
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 6828
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream no record."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6830
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6831
    const/4 v3, 0x0

    goto :goto_1

    .line 6834
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6835
    const-string v3, "delivery_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 6836
    .local v13, deliveryTypeColumnId:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 6837
    .local v12, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 6838
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 6839
    .local v18, fileSize:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6842
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6843
    .local v17, file:Ljava/io/File;
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6845
    .local v23, tempFin:Ljava/io/InputStream;
    packed-switch v12, :pswitch_data_0

    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :goto_2
    move-object v3, v14

    .line 6897
    goto :goto_1

    .line 6848
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :pswitch_0
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6849
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v21

    .line 6850
    .local v21, right:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    move-object v10, v11

    .line 6851
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 6855
    .end local v21           #right:Landroid/drm/mobile1/DrmRights;
    :pswitch_1
    :try_start_2
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 6856
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 6858
    if-eqz v22, :cond_4

    .line 6859
    invoke-static/range {p0 .. p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v9

    .line 6861
    .local v9, constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    move-object/from16 v0, p1

    invoke-static {v2, v9, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->checkExpiration(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_3

    .line 6862
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v14

    move-object v10, v11

    .line 6869
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 6865
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_3
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6867
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6871
    .end local v9           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_4
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 6873
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6878
    :pswitch_2
    :try_start_4
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6879
    .local v15, drmStream:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.content"

    move/from16 v0, v18

    invoke-direct {v11, v15, v0, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6880
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 6881
    if-nez v22, :cond_5

    .line 6883
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6887
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v14

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_2

    .line 6890
    .end local v15           #drmStream:Ljava/io/FileInputStream;
    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :catch_0
    move-exception v16

    .line 6892
    .local v16, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmContentStream : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 6894
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_4
    throw v3

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_4

    .line 6890
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :catch_1
    move-exception v16

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_3

    .line 6845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getDrmContrain(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5926
    invoke-static {p0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 8
    .parameter "cr"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 7033
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 7037
    .local v3, strWhere:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "existence=\'exist\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7039
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 7042
    .local v7, nHeadLength:I
    and-int/lit8 v0, p2, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 7043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7045
    :cond_0
    and-int/lit16 v0, p2, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 7046
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 7047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7048
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7050
    :cond_2
    and-int/lit16 v0, p2, 0xf00

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_4

    .line 7051
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 7052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7053
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7057
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7060
    const-string v0, "HtcWrapDrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start query where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7064
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7066
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 7067
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 7070
    :cond_5
    return-object v6
.end method

.method private static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 2
    .parameter "cx"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7015
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7017
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static final getDrmFileStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8001
    const/4 v0, 0x0

    return v0
.end method

.method public static final getDrmFileStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 8009
    const/4 v0, 0x0

    return v0
.end method

.method public static getDrmImageConstraint(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7852
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmImageCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7794
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmImageStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7906
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarConstraint(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7891
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7839
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmJarStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7951
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmLicenseInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7961
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;
    .locals 17
    .parameter "cr"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 6961
    const/4 v3, 0x0

    const-string v4, "_data=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6962
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 6964
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "getDrmRight query DRM db failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6966
    const/16 v16, 0x0

    .line 7003
    :cond_0
    :goto_0
    return-object v16

    .line 6967
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 6969
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "getDrmRight no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6971
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6972
    const/16 v16, 0x0

    goto :goto_0

    .line 6975
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6976
    const-string v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6977
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6978
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6980
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6981
    .local v10, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 6982
    .local v11, fis:Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 6984
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6985
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v8, v12, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6986
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 6987
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v13, v8}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v16

    .line 6994
    if-eqz v12, :cond_3

    .line 6995
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v11, v12

    .line 7002
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 6988
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_0
    move-exception v9

    .line 6990
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6994
    if-eqz v11, :cond_0

    .line 6995
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 6997
    :catch_1
    move-exception v9

    .line 6999
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6993
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 6994
    :goto_3
    if-eqz v11, :cond_4

    .line 6995
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 6993
    :cond_4
    :goto_4
    throw v1

    .line 6997
    :catch_2
    move-exception v9

    .line 6999
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmRight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6997
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_3
    move-exception v9

    .line 6999
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6993
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 6988
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static getDrmVideoConstraint(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7878
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmVideoCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7824
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmVideoStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7936
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 7766
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 7532
    const/4 v7, 0x0

    .line 7533
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 7535
    .local v3, findName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 7536
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getExternalStorageState() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7600
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 7541
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 7543
    .local v2, external_storage_file:Ljava/io/File;
    if-nez v2, :cond_1

    .line 7544
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getExternalStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7546
    goto :goto_0

    .line 7548
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 7549
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getExternalStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7551
    goto :goto_0

    .line 7555
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v5, v0, v4

    .line 7556
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7557
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7558
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 7572
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v3, :cond_5

    .line 7573
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7577
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in sdcard is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7578
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7592
    :catch_0
    move-exception v1

    .line 7593
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ get external storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7594
    const-string v9, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7595
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7597
    goto/16 :goto_0

    .line 7555
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 7563
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 7564
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7565
    const-string v9, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7566
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7568
    goto/16 :goto_0

    .line 7582
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7588
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ No download folder in sdcard."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7589
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7725
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 3936
    const/4 v8, 0x0

    .line 3937
    .local v8, result:Ljava/lang/String;
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3938
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3939
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3940
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3941
    .local v7, filePathColumnIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3943
    .end local v7           #filePathColumnIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3945
    :cond_1
    return-object v8
.end method

.method public static getInternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 7453
    const/4 v7, 0x0

    .line 7454
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 7457
    .local v2, findName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 7458
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getPhoneStorageDirectory() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7524
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 7464
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 7466
    .local v4, internal_storage_file:Ljava/io/File;
    if-nez v4, :cond_1

    .line 7468
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getPhoneStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7471
    goto :goto_0

    .line 7473
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 7474
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getPhoneStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7476
    goto :goto_0

    .line 7480
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v5, v0, v3

    .line 7481
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7482
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7483
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 7498
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v2, :cond_5

    .line 7499
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7503
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in internal storage is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7504
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7516
    :catch_0
    move-exception v1

    .line 7517
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ get phone storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7518
    const-string v9, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7519
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7521
    goto/16 :goto_0

    .line 7480
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 7488
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 7489
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7490
    const-string v9, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7491
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7493
    goto/16 :goto_0

    .line 7508
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7512
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ No download folder in internal storage."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7513
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 7632
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7689
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretKeySpecUsingKeyGenerator()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9

    .prologue
    .line 7119
    const/4 v4, 0x0

    .line 7122
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 7124
    .local v1, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 7127
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 7129
    .local v3, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 7131
    .local v2, raw:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v4, v5

    .line 7137
    .end local v1           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v2           #raw:[B
    .end local v3           #skey:Ljavax/crypto/SecretKey;
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 7132
    :catch_0
    move-exception v0

    .line 7134
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSecretKeySpecUsingSimNumber()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7142
    const/4 v3, 0x0

    .line 7145
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 7147
    .local v1, md:Ljava/security/MessageDigest;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 7149
    .local v5, telMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 7151
    .local v2, simNumber:Ljava/lang/String;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 7156
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v3, v4

    .line 7163
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #simNumber:Ljava/lang/String;
    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v5           #telMngr:Landroid/telephony/TelephonyManager;
    .restart local v3       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 7158
    :catch_0
    move-exception v0

    .line 7160
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSupportedStorages()I
    .locals 1

    .prologue
    .line 7659
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getSupportedStorages()I

    move-result v0

    return v0
.end method

.method public static final getUTC(Landroid/content/Context;)Ljava/util/Date;
    .locals 24
    .parameter "cx"

    .prologue
    .line 6907
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 6909
    .local v14, stamp:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 6910
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "consumeRights query stamp failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6911
    const/4 v1, 0x0

    .line 6949
    :goto_0
    return-object v1

    .line 6912
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 6913
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6914
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 6915
    const/4 v1, 0x0

    goto :goto_0

    .line 6918
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6919
    const-string/jumbo v1, "time_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 6920
    .local v20, syncTimeColumnId:I
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 6921
    .local v18, syncTime:J
    const-string v1, "clock_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 6922
    .local v17, syncClockColumnId:I
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 6923
    .local v15, syncClock:J
    const-string/jumbo v1, "timezone_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6924
    .local v23, syncTimeZoneColumnId:I
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 6925
    .local v21, syncTimeZone:J
    const-string/jumbo v1, "time_differential"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 6926
    .local v9, differentColumnId:I
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 6927
    .local v10, differential:J
    const-string v1, "network_sync"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 6928
    .local v13, network_sync:I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6929
    .local v12, networkSync:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 6931
    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-nez v1, :cond_3

    .line 6932
    :cond_2
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    const/4 v1, 0x0

    goto :goto_0

    .line 6936
    :cond_3
    if-nez v12, :cond_4

    .line 6937
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6938
    const/4 v1, 0x0

    goto :goto_0

    .line 6939
    :cond_4
    const-string v1, "TRUE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6940
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6941
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6945
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    sub-long v7, v1, v21

    .line 6947
    .local v7, date:J
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncTimeZone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v21, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6949
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method private static handleCutomization(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 1102
    const-string v6, "application"

    const-string v7, "Drm_Provider"

    invoke-static {p0, v6, v7}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/wrap/android/provider/DrmCustomizationData;

    move-result-object v2

    .line 1104
    .local v2, data:Lcom/htc/wrap/android/provider/DrmCustomizationData;
    if-nez v2, :cond_1

    .line 1140
    :cond_0
    return-void

    .line 1109
    :cond_1
    const-string v6, "Drm_Support"

    invoke-virtual {v2, v6}, Lcom/htc/wrap/android/provider/DrmCustomizationData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1111
    .local v0, bundleData:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1118
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1120
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1125
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1128
    .local v5, value:Ljava/lang/String;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@@@@     name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_DrmProvider:DRMSupport"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-static {v1, v4, v5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasPhoneStorage()Z
    .locals 1

    .prologue
    .line 7669
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    return v0
.end method

.method private static final installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "file"
    .parameter "mediaType"

    .prologue
    const/4 v7, 0x0

    .line 4757
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4759
    :cond_0
    const-string v8, "HtcWrapDrmStore"

    const-string v9, "installRightsObject Input error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    :cond_1
    :goto_0
    return-object v7

    .line 4763
    :cond_2
    const/4 v3, 0x0

    .line 4765
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 4766
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 4767
    .local v5, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v4, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 4768
    .local v6, rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_4

    .line 4770
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4775
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    .line 4811
    if-eqz v4, :cond_1

    .line 4812
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 4814
    :catch_0
    move-exception v0

    .line 4816
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_2
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4772
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_1
    move-exception v0

    .line 4773
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "HtcWrapDrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right fin.close(); exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 4778
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_2
    move-exception v0

    .line 4780
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v8, "HtcWrapDrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4784
    if-eqz v4, :cond_3

    .line 4785
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 4794
    :cond_3
    :goto_4
    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 4795
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :try_start_9
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 4796
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v3, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 4798
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_7

    .line 4799
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4800
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v7

    .line 4811
    if-eqz v3, :cond_1

    .line 4812
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 4814
    :catch_3
    move-exception v0

    .line 4816
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 4777
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_4
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 4811
    if-eqz v4, :cond_5

    .line 4812
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_5
    :goto_5
    move-object v3, v4

    .line 4819
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 4787
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 4789
    .local v1, e2:Ljava/lang/Exception;
    :try_start_d
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    .line 4810
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .line 4811
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_6
    if-eqz v3, :cond_6

    .line 4812
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 4810
    :cond_6
    :goto_7
    throw v7

    .line 4803
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 4811
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_8
    if-eqz v3, :cond_1

    .line 4812
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_0

    .line 4814
    :catch_5
    move-exception v0

    .line 4816
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 4804
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .line 4806
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v2, e3:Ljava/lang/Exception;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_9
    :try_start_11
    const-string v8, "HtcWrapDrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_8

    .line 4810
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #e3:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    goto :goto_6

    .line 4814
    :catch_7
    move-exception v0

    .line 4816
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4814
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_8
    move-exception v0

    .line 4816
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4804
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    goto :goto_9

    .line 4778
    .end local v0           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    move-object v4, v3

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static final isDrmContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 8033
    const/4 v0, 0x1

    return v0
.end method

.method public static final isDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 8041
    const/4 v0, 0x1

    return v0
.end method

.method public static final isFLDrmFile(Ljava/io/File;)Z
    .locals 10
    .parameter "file"

    .prologue
    .line 2767
    const-string v7, "HtcWrapDrmStore"

    const-string v8, " @@@@@     isFLDrmFile() - BEGIN. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    const/4 v0, 0x0

    .line 2771
    .local v0, bResult:Z
    const/4 v4, 0x0

    .line 2772
    .local v4, fin:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2776
    .local v1, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2777
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v5, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v2, v5, v7, v8}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2781
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .local v2, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_2
    invoke-virtual {v2}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v6

    .line 2785
    .local v6, method:I
    const-string v7, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 2788
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2790
    const/4 v0, 0x1

    .line 2806
    :cond_0
    if-eqz v5, :cond_1

    .line 2808
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .line 2819
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v6           #method:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v7, "HtcWrapDrmStore"

    const-string v8, " @@@@@     isFLDrmFile() - END. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    return v0

    .line 2793
    :catch_0
    move-exception v3

    .line 2795
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 2799
    :try_start_4
    const-string v7, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2806
    if-eqz v4, :cond_2

    .line 2808
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2811
    :catch_1
    move-exception v3

    .line 2813
    const-string v7, "HtcWrapDrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2804
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 2806
    :goto_3
    if-eqz v4, :cond_3

    .line 2808
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2804
    :cond_3
    :goto_4
    throw v7

    .line 2811
    :catch_2
    move-exception v3

    .line 2813
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2811
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v6       #method:I
    :catch_3
    move-exception v3

    .line 2813
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "HtcWrapDrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2804
    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #method:I
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2793
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final isRightsUnlimited(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8057
    const/4 v0, 0x1

    return v0
.end method

.method public static final isRightsValidByResultCode(I)Z
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 8049
    const/4 v0, 0x1

    return v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    .line 5101
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"

    .prologue
    .line 5108
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 31
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 5125
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5126
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v29, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5127
    .local v29, values:Landroid/content/ContentValues;
    new-instance v19, Landroid/media/MediaInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 5128
    .local v19, mediaInfo:Landroid/media/MediaInfo;
    const/16 v20, 0x0

    .line 5129
    .local v20, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v23, 0x0

    .line 5131
    .local v23, parseFile:Ljava/io/File;
    :try_start_0
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5132
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 5133
    if-eqz v20, :cond_0

    .line 5134
    const/4 v4, 0x3

    move-object/from16 v0, v20

    iput v4, v0, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5230
    :cond_0
    :goto_0
    if-eqz v20, :cond_14

    .line 5233
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 5234
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_b

    .line 5235
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5236
    const-string v4, "_data"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 5237
    .local v25, pathIndex:I
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5238
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 5239
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5244
    .end local v25           #pathIndex:I
    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 5250
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5253
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5254
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 5260
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "No title information in content, we have to decide one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5263
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_d

    .line 5264
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5265
    const-string/jumbo v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 5266
    .local v28, titleIndex:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 5267
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 5268
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 5273
    .end local v28           #titleIndex:I
    :cond_2
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5278
    :goto_4
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 5279
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We decide the tilte is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5289
    .end local v9           #c:Landroid/database/Cursor;
    :cond_3
    :goto_5
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5291
    .local v10, cAlbums:Landroid/database/Cursor;
    if-nez v10, :cond_f

    .line 5293
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5300
    const/16 v29, 0x0

    .line 5419
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_6
    return-object v29

    .line 5138
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_5
    const/16 v16, 0x0

    .line 5140
    .local v16, extention:Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 5161
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 5164
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v23           #parseFile:Ljava/io/File;
    .local v24, parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .line 5179
    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    :goto_7
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    new-instance v22, Ljava/io/FileOutputStream;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5183
    .local v22, os:Ljava/io/FileOutputStream;
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5184
    .local v17, fin:Ljava/io/FileInputStream;
    new-instance v12, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5185
    .local v12, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v18

    .line 5186
    .local v18, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v26

    .line 5187
    .local v26, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v27

    .line 5188
    .local v27, stream:Ljava/io/InputStream;
    invoke-virtual {v12}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v21

    .line 5189
    .local v21, method:I
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 5190
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 5191
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 5192
    if-eqz v27, :cond_6

    .line 5193
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 5198
    :cond_6
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5199
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 5202
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 5203
    if-eqz v20, :cond_7

    .line 5204
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5214
    :cond_7
    if-eqz v23, :cond_0

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5215
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5216
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5222
    .end local v12           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #extention:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #method:I
    .end local v22           #os:Ljava/io/FileOutputStream;
    .end local v26           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v27           #stream:Ljava/io/InputStream;
    .end local v29           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 5224
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5169
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #extention:Ljava/lang/String;
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v24       #parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    goto/16 :goto_7

    .line 5206
    :catch_1
    move-exception v15

    .line 5208
    .local v15, e:Ljava/io/IOException;
    :try_start_4
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DM audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5210
    const/16 v29, 0x0

    .line 5214
    .end local v29           #values:Landroid/content/ContentValues;
    if-eqz v23, :cond_4

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5215
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 5216
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5214
    .end local v15           #e:Ljava/io/IOException;
    .restart local v29       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5215
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5216
    const-string v5, "HtcWrapDrmStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    :cond_9
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 5242
    .end local v16           #extention:Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 5246
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 5271
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_3

    .line 5275
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 5284
    .end local v9           #c:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5285
    const-string/jumbo v4, "title"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5303
    .restart local v10       #cAlbums:Landroid/database/Cursor;
    :cond_f
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5305
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_10

    .line 5306
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5308
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5310
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5311
    .local v14, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5312
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5313
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5315
    if-nez v10, :cond_10

    .line 5317
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5327
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_10
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5328
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5330
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5332
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5335
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5337
    .local v11, cArtists:Landroid/database/Cursor;
    if-nez v11, :cond_11

    .line 5339
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5349
    :cond_11
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 5352
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5354
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5356
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5357
    .restart local v14       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5359
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5361
    if-nez v11, :cond_12

    .line 5363
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5367
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_12
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5368
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5370
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5372
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5374
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_13

    .line 5375
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 5381
    :cond_13
    if-nez p6, :cond_4

    .line 5383
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->insertDRMAudioToMediaProvider(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_4

    .line 5385
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 5392
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5394
    :catch_2
    move-exception v15

    .line 5396
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5409
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v11           #cArtists:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/Exception;
    :cond_14
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8017
    const/4 v0, 0x0

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"

    .prologue
    .line 6450
    const/16 v16, 0x0

    .line 6452
    .local v16, res:I
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6456
    :cond_0
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6458
    const/4 v1, -0x2

    .line 6518
    :goto_0
    return v1

    .line 6461
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6463
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 6465
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights query failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6467
    const/4 v1, -0x6

    goto :goto_0

    .line 6468
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 6470
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6473
    const/4 v1, -0x6

    goto :goto_0

    .line 6476
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6477
    const-string v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6478
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6479
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6481
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6483
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6485
    const/4 v1, -0x2

    goto :goto_0

    .line 6488
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6490
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6491
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6492
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 6493
    .local v13, issuer:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 6494
    if-nez v13, :cond_5

    .line 6496
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights : -7"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 6499
    const/4 v1, -0x7

    goto :goto_0

    .line 6501
    :cond_5
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 6503
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6505
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6506
    .local v12, intent:Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 6507
    .local v17, righturi:Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6508
    const/high16 v1, 0x1000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6510
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6511
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #issuer:Ljava/lang/String;
    .end local v17           #righturi:Landroid/net/Uri;
    :goto_1
    move/from16 v1, v16

    .line 6518
    goto/16 :goto_0

    .line 6512
    :catch_0
    move-exception v9

    .line 6514
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6516
    const/16 v16, -0x1

    goto :goto_1
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 6668
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "********renewRights  (2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6671
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6673
    :cond_0
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights  (2) : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6675
    const/4 v1, -0x2

    .line 6788
    :goto_0
    return v1

    .line 6678
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6680
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 6682
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights  (2) : -6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6684
    const/4 v1, -0x6

    goto :goto_0

    .line 6685
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 6687
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights  (2) :  no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6689
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6690
    const/4 v1, -0x6

    goto :goto_0

    .line 6693
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6694
    const-string v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 6695
    .local v14, messageTypeColumnId:I
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 6696
    .local v13, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6698
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6700
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights  (2) : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6702
    const/4 v1, -0x2

    goto :goto_0

    .line 6705
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6707
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6708
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v13}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6709
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v12

    .line 6710
    .local v12, issuer:Ljava/lang/String;
    if-nez v12, :cond_5

    .line 6712
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "Null issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6714
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 6715
    const/16 v1, -0x9

    goto :goto_0

    .line 6716
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 6718
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "Empty issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6720
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 6721
    const/16 v1, -0x9

    goto/16 :goto_0

    .line 6723
    :cond_6
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 6725
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6729
    :try_start_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 6731
    .local v15, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "uri"

    invoke-virtual {v15, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6732
    const-string v1, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6734
    const-string v1, "notificationclass"

    move-object/from16 v0, p3

    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6736
    const-string/jumbo v1, "visibility"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6738
    const-string v1, "is_visible_in_downloads_ui"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6743
    const-string v1, "restriction"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6773
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6788
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6775
    .end local v15           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 6777
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renewRights  (2) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6779
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6780
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 6782
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 6784
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renewRights  (2) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6786
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method private static final saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    .locals 23
    .parameter "file"
    .parameter "content"
    .parameter "os"

    .prologue
    .line 4113
    const/16 v16, 0x0

    .line 4115
    .local v16, res:I
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4116
    .local v11, fin_header:Ljava/io/FileInputStream;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 4118
    .local v5, contentOffset:I
    new-array v13, v5, [B

    .line 4119
    .local v13, header_buffer:[B
    invoke-virtual {v11, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4120
    .local v6, count:I
    if-ne v6, v5, :cond_1

    .line 4121
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4123
    const-string v20, "HtcWrapDrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Header has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4136
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v14

    .line 4137
    .local v14, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v17

    .line 4138
    .local v17, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v17, :cond_0

    .line 4140
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "rights == null."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v18

    .line 4144
    .local v18, stream:Ljava/io/InputStream;
    move v10, v5

    .line 4145
    .local v10, endOfContent:I
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v3, v0, [B

    .line 4146
    .local v3, buffer:[B
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 4147
    .local v8, encryptBuffer:[B
    const/4 v15, 0x0

    .line 4148
    .local v15, nEncryptPadding:I
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_4

    .line 4149
    add-int/2addr v10, v6

    .line 4150
    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v6, v0, :cond_2

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 4151
    .local v9, encryptRes:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_3

    .line 4152
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4161
    sub-int v15, v9, v6

    .line 4162
    goto :goto_0

    .line 4126
    .end local v3           #buffer:[B
    .end local v8           #encryptBuffer:[B
    .end local v9           #encryptRes:I
    .end local v10           #endOfContent:I
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v15           #nEncryptPadding:I
    .end local v17           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v18           #stream:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4128
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "Read header failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    const/16 v20, -0x1

    .line 4201
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    :goto_2
    return v20

    .line 4150
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #header_buffer:[B
    .restart local v14       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v15       #nEncryptPadding:I
    .restart local v17       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v18       #stream:Ljava/io/InputStream;
    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    .line 4154
    .restart local v9       #encryptRes:I
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 4156
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "Encrypt content failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    const/16 v20, -0x1

    goto :goto_2

    .line 4165
    .end local v9           #encryptRes:I
    :cond_4
    sub-int v4, v10, v5

    .line 4166
    .local v4, contentCount:I
    const-string v20, "HtcWrapDrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes, nEncryptPadding = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 4173
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4174
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 4175
    const/16 v20, 0x100

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 4176
    .local v19, tailerBuffer:[B
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4177
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_5

    .line 4178
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4180
    const-string v20, "HtcWrapDrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Tail has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4190
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileDescriptor;->sync()V

    .line 4192
    add-int v20, v6, v15

    goto/16 :goto_2

    .line 4183
    :cond_5
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4185
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "Output tailer failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4187
    const/16 v20, -0x1

    goto/16 :goto_2

    .line 4193
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v15           #nEncryptPadding:I
    .end local v17           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v18           #stream:Ljava/io/InputStream;
    .end local v19           #tailerBuffer:[B
    :catch_0
    move-exception v7

    .line 4195
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v20, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4197
    const/16 v16, -0x1

    move/from16 v20, v16

    .line 4201
    goto/16 :goto_2

    .line 4198
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    throw v20
.end method

.method private static final declared-synchronized saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 31
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 4213
    const-class v28, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;

    monitor-enter v28

    const/16 v23, 0x0

    .line 4216
    .local v23, res:I
    :try_start_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v29, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4218
    .local v14, garbageFileDir:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4221
    .local v13, garbageDir:Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 4225
    :goto_0
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "garbage"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4226
    .local v15, garbageFilePath:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4227
    .local v16, garbagefile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 4229
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4230
    .local v17, garbageos:Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/FileOutputStream;

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4232
    .local v21, os:Ljava/io/FileOutputStream;
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 4235
    .local v5, contentOffset:I
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4236
    .local v11, fin_header:Ljava/io/FileInputStream;
    new-array v0, v5, [B

    move-object/from16 v19, v0

    .line 4237
    .local v19, header_buffer:[B
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4239
    .local v6, count:I
    if-ne v6, v5, :cond_5

    .line 4240
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4241
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4244
    const-string v27, "HtcWrapDrmStore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Header has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4267
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4289
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v20

    .line 4290
    .local v20, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v24

    .line 4292
    .local v24, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v24, :cond_0

    .line 4294
    const-string v27, "HtcWrapDrmStore"

    const-string v29, "rights == null."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    :cond_0
    const/16 v25, 0x0

    .line 4301
    .local v25, stream:Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 4302
    .local v18, hasFailed:Z
    const/16 v22, 0x0

    .line 4303
    .local v22, repeat:I
    const/4 v3, 0x0

    .line 4304
    .local v3, buffer:[B
    const/4 v8, 0x0

    .line 4305
    .local v8, encryptBuffer:[B
    const/4 v10, 0x0

    .line 4308
    .local v10, endOfContent:I
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ Retrieve content!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 4313
    :cond_1
    const/16 v18, 0x0

    .line 4315
    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v25

    .line 4328
    :goto_2
    if-nez v18, :cond_1

    .line 4331
    :try_start_6
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ Encrypt content!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    move v10, v5

    .line 4338
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v3, v0, [B

    .line 4339
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v8, v0, [B

    .line 4341
    :goto_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_b

    .line 4342
    add-int/2addr v10, v6

    .line 4343
    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v6, v0, :cond_8

    const/16 v27, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 4346
    .local v9, encryptRes:I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_9

    .line 4347
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4348
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 4374
    .end local v9           #encryptRes:I
    :catch_0
    move-exception v7

    .line 4376
    .local v7, e:Ljava/lang/Exception;
    :try_start_7
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: read content stream failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 4381
    const/4 v3, 0x0

    .line 4382
    const/4 v8, 0x0

    .line 4385
    if-eqz v25, :cond_2

    .line 4386
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 4390
    :cond_2
    :goto_5
    const/16 v25, 0x0

    .line 4393
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4395
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4396
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 4397
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 4399
    if-eqz v16, :cond_3

    .line 4400
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 4403
    :cond_3
    const/4 v6, -0x1

    .line 4513
    .end local v3           #buffer:[B
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    :cond_4
    :goto_6
    monitor-exit v28

    return v6

    .line 4247
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v19       #header_buffer:[B
    .restart local v21       #os:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4250
    const-string v27, "HtcWrapDrmStore"

    const-string v29, "Read header failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4255
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4256
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 4257
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 4259
    if-eqz v16, :cond_6

    .line 4260
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 4263
    :cond_6
    const/4 v6, -0x1

    goto :goto_6

    .line 4268
    :catch_1
    move-exception v7

    .line 4270
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: close Read header failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 4503
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v19           #header_buffer:[B
    .end local v21           #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 4506
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_b
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4509
    const/16 v23, -0x1

    move/from16 v6, v23

    .line 4513
    goto :goto_6

    .line 4316
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception v7

    .line 4318
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_c
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: get content input stream ERROR!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    const/16 v27, 0x3

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 4322
    const/16 v18, 0x1

    .line 4325
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 4343
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 4350
    .restart local v9       #encryptRes:I
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    .line 4353
    const-string v27, "HtcWrapDrmStore"

    const-string v29, "Encrypt content failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4358
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4359
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 4360
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 4362
    if-eqz v16, :cond_a

    .line 4363
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 4366
    :cond_a
    const/4 v6, -0x1

    goto/16 :goto_6

    .line 4371
    .end local v9           #encryptRes:I
    :cond_b
    sub-int v4, v10, v5

    .line 4372
    .local v4, contentCount:I
    const-string v27, "HtcWrapDrmStore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 4407
    :try_start_d
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 4429
    :goto_7
    :try_start_e
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4430
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    const/16 v27, 0x100

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 4432
    .local v26, tailerBuffer:[B
    int-to-long v0, v10

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 4433
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4435
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_c

    .line 4436
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4437
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4440
    const-string v27, "HtcWrapDrmStore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Tail has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 4464
    :try_start_f
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4466
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4467
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 4478
    :goto_8
    :try_start_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 4488
    :goto_9
    :try_start_11
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 4497
    :goto_a
    if-eqz v16, :cond_4

    .line 4498
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_6

    .line 4510
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    .end local v26           #tailerBuffer:[B
    :catchall_0
    move-exception v27

    :try_start_13
    throw v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 4213
    :catchall_1
    move-exception v27

    monitor-exit v28

    throw v27

    .line 4390
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catchall_2
    move-exception v27

    const/16 v25, 0x0

    :try_start_14
    throw v27

    .line 4408
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #contentCount:I
    :catch_4
    move-exception v7

    .line 4410
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: close content stream failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 4443
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v12       #fin_tailer:Ljava/io/FileInputStream;
    .restart local v26       #tailerBuffer:[B
    :cond_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4446
    const-string v27, "HtcWrapDrmStore"

    const-string v29, "Output tailer failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4451
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 4452
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 4453
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 4455
    if-eqz v16, :cond_d

    .line 4456
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 4459
    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_6

    .line 4468
    :catch_5
    move-exception v7

    .line 4470
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: close Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 4479
    .end local v7           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 4481
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: sync Output Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 4489
    .end local v7           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 4491
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: close Output Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_a

    .line 4222
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    .end local v26           #tailerBuffer:[B
    :catch_8
    move-exception v27

    goto/16 :goto_0

    .line 4388
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catch_9
    move-exception v27

    goto/16 :goto_5
.end method

.method private static final saveFile(Ljava/io/File;Ljava/lang/String;Landroid/drm/mobile1/DrmRawContent;)I
    .locals 23
    .parameter "file"
    .parameter "outpath"
    .parameter "content"

    .prologue
    .line 3986
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "saveFile(File file, String outpath, DrmRawContent content)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    const/16 v16, 0x0

    .line 3989
    .local v16, res:I
    :try_start_0
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 3990
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v17

    .line 3991
    .local v17, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v18

    .line 3992
    .local v18, stream:Ljava/io/InputStream;
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3993
    .local v15, os:Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3994
    .local v10, fin_header:Ljava/io/FileInputStream;
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v4

    .line 3996
    .local v4, contentOffset:I
    new-array v12, v4, [B

    .line 3997
    .local v12, header_buffer:[B
    invoke-virtual {v10, v12}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 3998
    .local v5, count:I
    if-ne v5, v4, :cond_1

    .line 4000
    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v15, v12, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4007
    :goto_0
    :try_start_2
    const-string v20, "HtcWrapDrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Header has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 4020
    if-nez v17, :cond_0

    .line 4022
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "rights == null."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    :cond_0
    move v9, v4

    .line 4027
    .local v9, endOfContent:I
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v2, v0, [B

    .line 4028
    .local v2, buffer:[B
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v7, v0, [B

    .line 4029
    .local v7, encryptBuffer:[B
    const/4 v14, 0x0

    .line 4030
    .local v14, nEncryptPadding:I
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_4

    .line 4031
    add-int/2addr v9, v5

    .line 4032
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_2

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v2, v7, v5, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    .line 4033
    .local v8, encryptRes:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_3

    .line 4035
    const/16 v20, 0x0

    :try_start_3
    move/from16 v0, v20

    invoke-virtual {v15, v7, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4049
    :goto_3
    sub-int v14, v8, v5

    .line 4050
    goto :goto_1

    .line 4001
    .end local v2           #buffer:[B
    .end local v7           #encryptBuffer:[B
    .end local v8           #encryptRes:I
    .end local v9           #endOfContent:I
    .end local v14           #nEncryptPadding:I
    :catch_0
    move-exception v6

    .line 4002
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4003
    new-instance v15, Ljava/io/FileOutputStream;

    .end local v15           #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4004
    .restart local v15       #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 4092
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #header_buffer:[B
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v15           #os:Ljava/io/FileOutputStream;
    .end local v17           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v18           #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 4094
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v20, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4096
    const/16 v16, -0x1

    move/from16 v20, v16

    .line 4100
    .end local v6           #e:Ljava/lang/Exception;
    :goto_4
    return v20

    .line 4010
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v10       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #header_buffer:[B
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v15       #os:Ljava/io/FileOutputStream;
    .restart local v17       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v18       #stream:Ljava/io/InputStream;
    :cond_1
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 4012
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "Read header failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    const/16 v20, -0x1

    goto :goto_4

    .line 4032
    .restart local v2       #buffer:[B
    .restart local v7       #encryptBuffer:[B
    .restart local v9       #endOfContent:I
    .restart local v14       #nEncryptPadding:I
    :cond_2
    const/16 v20, 0x0

    goto :goto_2

    .line 4036
    .restart local v8       #encryptRes:I
    :catch_2
    move-exception v6

    .line 4037
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4038
    new-instance v15, Ljava/io/FileOutputStream;

    .end local v15           #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4039
    .restart local v15       #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v7, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 4097
    .end local v2           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #encryptBuffer:[B
    .end local v8           #encryptRes:I
    .end local v9           #endOfContent:I
    .end local v10           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #header_buffer:[B
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v14           #nEncryptPadding:I
    .end local v15           #os:Ljava/io/FileOutputStream;
    .end local v17           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v18           #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v20

    throw v20

    .line 4042
    .restart local v2       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #encryptBuffer:[B
    .restart local v8       #encryptRes:I
    .restart local v9       #endOfContent:I
    .restart local v10       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #header_buffer:[B
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v14       #nEncryptPadding:I
    .restart local v15       #os:Ljava/io/FileOutputStream;
    .restart local v17       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v18       #stream:Ljava/io/InputStream;
    :cond_3
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 4044
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "Encrypt content failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    const/16 v20, -0x1

    goto :goto_4

    .line 4053
    .end local v8           #encryptRes:I
    :cond_4
    sub-int v3, v9, v4

    .line 4054
    .local v3, contentCount:I
    const-string v20, "HtcWrapDrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes, nEncryptPadding = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 4061
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4062
    .local v11, fin_tailer:Ljava/io/FileInputStream;
    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 4063
    const/16 v20, 0x100

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 4064
    .local v19, tailerBuffer:[B
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v5

    .line 4065
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_5

    .line 4067
    const/16 v20, 0x0

    :try_start_8
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 4074
    :goto_5
    :try_start_9
    const-string v20, "HtcWrapDrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Tail has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4084
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 4087
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 4091
    :goto_6
    add-int v20, v5, v14

    goto/16 :goto_4

    .line 4068
    :catch_3
    move-exception v6

    .line 4069
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4070
    new-instance v15, Ljava/io/FileOutputStream;

    .end local v15           #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4071
    .restart local v15       #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 4077
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4079
    const-string v20, "HtcWrapDrmStore"

    const-string v21, "Output tailer failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    const/16 v20, -0x1

    goto/16 :goto_4

    .line 4088
    :catch_4
    move-exception v6

    .line 4089
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6
.end method

.method private static final saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    .locals 7
    .parameter "stream"
    .parameter "os"

    .prologue
    .line 3955
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 3957
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 3959
    .local v3, res:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, count:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3960
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3963
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 3964
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    .line 3966
    :try_start_1
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content inputstream read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3971
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return v3

    .line 3962
    .restart local v1       #count:I
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3968
    .end local v1           #count:I
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private static final declared-synchronized saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 27
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 4523
    const-class v24, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;

    monitor-enter v24

    const/16 v17, 0x0

    .line 4526
    .local v17, res:I
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4527
    .local v14, os:Ljava/io/FileOutputStream;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v4

    .line 4530
    .local v4, contentOffset:I
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4531
    .local v8, fin_header:Ljava/io/FileInputStream;
    new-array v10, v4, [B

    .line 4532
    .local v10, header_buffer:[B
    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 4534
    .local v5, count:I
    if-ne v5, v4, :cond_3

    .line 4535
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 4536
    .local v22, tempHeader:Ljava/lang/String;
    const-string v23, "Content-Transfer-Encoding: base64"

    const-string v25, "Content-Transfer-Encoding: binary"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4537
    .local v12, newTempHeader:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v13, v0

    .line 4539
    .local v13, newTempHeaderCount:I
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4542
    const-string v23, "HtcWrapDrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Header has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") bytes. (saveFileFromBase64)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4545
    move v4, v13

    .line 4561
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4582
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v11

    .line 4583
    .local v11, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v18

    .line 4585
    .local v18, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v18, :cond_0

    .line 4587
    const-string v23, "HtcWrapDrmStore"

    const-string v25, "rights == null."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    :cond_0
    const/16 v19, 0x0

    .line 4594
    .local v19, stream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 4595
    .local v9, hasFailed:Z
    const/16 v16, 0x0

    .line 4596
    .local v16, repeat:I
    const/4 v3, 0x0

    .line 4597
    .local v3, buffer:[B
    const/4 v7, 0x0

    .line 4598
    .local v7, endOfContent:I
    const/4 v15, 0x0

    .line 4601
    .local v15, realContentLength:I
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ Retrieve content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4606
    :cond_1
    const/4 v9, 0x0

    .line 4608
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    .line 4621
    :goto_1
    if-nez v9, :cond_1

    .line 4624
    :try_start_4
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ Encrypt content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v3, v0, [B

    .line 4630
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_5

    .line 4631
    add-int/2addr v15, v5

    .line 4632
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v3, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 4642
    :catch_0
    move-exception v6

    .line 4644
    .local v6, e:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: read content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 4649
    const/4 v3, 0x0

    .line 4652
    if-eqz v19, :cond_2

    .line 4653
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 4657
    :cond_2
    :goto_3
    const/16 v19, 0x0

    .line 4660
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4661
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 4663
    const/4 v5, -0x1

    .line 4746
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :goto_4
    monitor-exit v24

    return v5

    .line 4547
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v10       #header_buffer:[B
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 4550
    const-string v23, "HtcWrapDrmStore"

    const-string v25, "Read header failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4555
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 4557
    const/4 v5, -0x1

    goto :goto_4

    .line 4562
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 4564
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: close Read header failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 4736
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v10           #header_buffer:[B
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 4739
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4742
    const/16 v17, -0x1

    move/from16 v5, v17

    .line 4746
    goto :goto_4

    .line 4609
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 4611
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: get content input stream ERROR!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    const/16 v23, 0x3

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 4615
    const/4 v9, 0x1

    .line 4618
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 4640
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    const-string v23, "HtcWrapDrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " @@@@@ Real Content has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 4667
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 4689
    :goto_5
    :try_start_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/drm/mobile1/DrmRawContent;->getBoundary()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "--\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4690
    .local v20, tail:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v21, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 4693
    .local v21, tailCount:I
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4696
    const-string v23, "HtcWrapDrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Tail has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 4713
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 4723
    :goto_6
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 4733
    :goto_7
    add-int v23, v4, v15

    add-int v5, v23, v21

    .line 4735
    goto/16 :goto_4

    .line 4657
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    .restart local v6       #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    const/16 v19, 0x0

    :try_start_10
    throw v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 4743
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catchall_1
    move-exception v23

    :try_start_11
    throw v23
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 4523
    :catchall_2
    move-exception v23

    monitor-exit v24

    throw v23

    .line 4668
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 4670
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_12
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: close content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 4698
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v20       #tail:Ljava/lang/String;
    .restart local v21       #tailCount:I
    :catch_5
    move-exception v6

    .line 4701
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v25, "Output tailer failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4706
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 4708
    const/4 v5, -0x1

    goto/16 :goto_4

    .line 4714
    .end local v6           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 4716
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: sync Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4719
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 4724
    .end local v6           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 4726
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: close Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_7

    .line 4655
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    :catch_8
    move-exception v23

    goto/16 :goto_3
.end method

.method public static setEnableCombinedDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 7392
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 7393
    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    .line 7394
    return-void

    :cond_0
    move v0, v1

    .line 7392
    goto :goto_0
.end method

.method public static setEnableSeparateDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 7403
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 7404
    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    .line 7405
    return-void

    :cond_0
    move v0, v1

    .line 7403
    goto :goto_0
.end method

.method private static setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1144
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    const-string v0, "combined_delivery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1151
    :cond_2
    invoke-static {p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->setEnableCombinedDelivery(Z)V

    goto :goto_0

    .line 1153
    :cond_3
    const-string v0, "separate_delivery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    :cond_4
    invoke-static {p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->setEnableSeparateDelivery(Z)V

    goto :goto_0
.end method

.method private static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 4826
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 29
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 4838
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4839
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v27, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4840
    .local v27, values:Landroid/content/ContentValues;
    new-instance v18, Landroid/media/MediaInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 4841
    .local v18, mediaInfo:Landroid/media/MediaInfo;
    const/16 v19, 0x0

    .line 4842
    .local v19, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v22, 0x0

    .line 4845
    .local v22, parseFile:Ljava/io/File;
    const/4 v15, 0x0

    .line 4847
    .local v15, extention:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4868
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 4871
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v22           #parseFile:Ljava/io/File;
    .local v23, parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .line 4887
    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    :goto_0
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4890
    new-instance v21, Ljava/io/FileOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4891
    .local v21, os:Ljava/io/FileOutputStream;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4892
    .local v16, fin:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4893
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v17

    .line 4894
    .local v17, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v25

    .line 4895
    .local v25, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v26

    .line 4896
    .local v26, stream:Ljava/io/InputStream;
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v20

    .line 4897
    .local v20, method:I
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 4898
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 4902
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 4903
    if-eqz v26, :cond_0

    .line 4904
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    .line 4906
    :cond_0
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4907
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 4910
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v19

    .line 4911
    if-eqz v19, :cond_1

    .line 4912
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4922
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4923
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4924
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    :cond_2
    if-eqz v19, :cond_f

    .line 4933
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4934
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 4935
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4936
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4937
    .local v24, pathIndex:I
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4938
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 4939
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4944
    .end local v24           #pathIndex:I
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4951
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4954
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4960
    const-string/jumbo v4, "title"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4964
    :cond_4
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4966
    .local v9, cAlbums:Landroid/database/Cursor;
    if-nez v9, :cond_a

    .line 4968
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4975
    const/16 v27, 0x0

    .line 5094
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #fin:Ljava/io/FileInputStream;
    .end local v17           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v20           #method:I
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v25           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v26           #stream:Ljava/io/InputStream;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_3
    return-object v27

    .line 4876
    .restart local v27       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v22           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    goto/16 :goto_0

    .line 4914
    :catch_0
    move-exception v14

    .line 4916
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4918
    const/16 v27, 0x0

    .line 4922
    .end local v27           #values:Landroid/content/ContentValues;
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4923
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4924
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4922
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v27       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4923
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7

    .line 4924
    const-string v5, "HtcWrapDrmStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    :cond_7
    throw v4

    .line 4942
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #fin:Ljava/io/FileInputStream;
    .restart local v17       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v20       #method:I
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v25       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v26       #stream:Ljava/io/InputStream;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 4946
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 4978
    .restart local v9       #cAlbums:Landroid/database/Cursor;
    :cond_a
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 4981
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4983
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4986
    .local v13, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4987
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4988
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4990
    if-nez v9, :cond_b

    .line 4992
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5002
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5003
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5005
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5010
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5012
    .local v10, cArtists:Landroid/database/Cursor;
    if-nez v10, :cond_c

    .line 5014
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5024
    :cond_c
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5026
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_d

    .line 5027
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5029
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5032
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5033
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5034
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5036
    if-nez v10, :cond_d

    .line 5038
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5043
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5045
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5049
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 5050
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 5056
    :cond_e
    if-nez p6, :cond_5

    .line 5058
    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->updateDRMAudio(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_5

    .line 5060
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Update DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 5067
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5069
    :catch_1
    move-exception v14

    .line 5071
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5078
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5084
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v10           #cArtists:Landroid/database/Cursor;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #e:Ljava/lang/Exception;
    :cond_f
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
