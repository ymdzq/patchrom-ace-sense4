.class public Lcom/htc/album/helper/FastCameraImagePreviewHelper;
.super Ljava/lang/Object;
.source "FastCameraImagePreviewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_SHOT_002_COVER_JPG:Ljava/lang/String; = "002_COVER.jpg"

.field private static final CONTINUOUS_SHOT_DEFAULT_COVER_FILE_NAME:Ljava/lang/String; = "/IMAG0002_COVER.jpg"

.field private static final CONTINUOUS_SHOT_REGEXP_DEFAULT_COVER_PATH:Ljava/lang/String; = "(.*IMAG\\w+_BURST)\\w+.*"

.field public static final KEY_BURST_SHOT_EXPAND:Ljava/lang/String; = "FastCameraImagePreviewHelper_key_burst_shot_expand"

.field public static final KEY_CAMERA_FILE_PATH:Ljava/lang/String; = "camera_last_file_path"

.field public static final KEY_CAMERA_MIMETYPE:Ljava/lang/String; = "camera_last_file_mime"

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "FastCameraImagePreviewHelper_key_lastest_file_path"

.field private static final TAG:Ljava/lang/String; = "FastCameraImagePreviewHelper"

.field private static sContinuousShotCovertPattern:Ljava/util/regex/Pattern;

.field private static sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getContinuousShotCovertPattern()Ljava/util/regex/Pattern;
    .locals 2

    const-class v1, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCovertPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string v0, "(.*IMAG\\d+_BURST)\\d+_COVER.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCovertPattern:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCovertPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;
    .locals 2

    const-class v1, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;-><init>()V

    sput-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    :cond_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLatestPhotoInCameraShot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    new-instance v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;

    invoke-direct {v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;)V

    iget-object v1, v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v2, v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private parseBurstShotSetID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v4, "BURST"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "(.*IMAG\\w+_BURST)\\w+.*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-ne v5, v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;)V
    .locals 12

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryWhere(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryArgs(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "_id"

    aput-object v11, v2, v5

    const/4 v5, 0x1

    const-string v11, "_data"

    aput-object v11, v2, v5

    const/4 v5, 0x2

    const-string v11, "orientation"

    aput-object v11, v2, v5

    const/4 v5, 0x3

    const-string v11, "favorite"

    aput-object v11, v2, v5

    const-string v5, "datetaken DESC, _data DESC LIMIT 1"

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iput-object v10, p2, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->filePath:Ljava/lang/String;

    iput v9, p2, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->orientation:I

    and-int/lit8 v0, v8, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p2, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->isBurstShot:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :try_start_1
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v0, v1, :cond_2

    const-string v0, "FastCameraImagePreviewHelper"

    const-string v1, "[isLatestPhotoInCameraShot] moveToFirst=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const/4 v0, 0x1

    :try_start_2
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v0, v1, :cond_5

    const-string v0, "FastCameraImagePreviewHelper"

    const-string v1, "[isLatestPhotoInCameraShot] Can\'t query from db"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    :try_start_3
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v0, v1, :cond_2

    const-string v0, "FastCameraImagePreviewHelper"

    const-string v1, "[isLatestPhotoInCameraShot] cursor=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 v6, 0x0

    throw v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private declared-synchronized updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 7

    const/4 v4, 0x1

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-ne v4, p5, :cond_2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->isLatestPhotoInCameraShot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "FastCameraImagePreviewHelper_key_lastest_file_path"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const-string v5, "FastCameraImagePreviewHelper_key_lastest_file_path"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "FastCameraImagePreviewHelper_key_burst_shot_expand"

    if-nez p4, :cond_4

    :goto_1
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCoverImageFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string v3, "(.*IMAG\\w+_BURST)\\w+.*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-ne v4, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "002_COVER.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/IMAG0002_COVER.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getLatestGridPhotoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "FastCameraImagePreviewHelper_key_lastest_file_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRotationInformation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public isBurstShotExpand(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "FastCameraImagePreviewHelper_key_burst_shot_expand"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isSameCollection(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getLatestGridPhotoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->parseBurstShotSetID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method public updateLastestInformation(Landroid/content/Context;)V
    .locals 7

    new-instance v6, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;

    invoke-direct {v6}, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;-><init>()V

    invoke-direct {p0, p1, v6}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;)V

    iget-object v2, v6, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->filePath:Ljava/lang/String;

    iget v3, v6, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->orientation:I

    iget-boolean v4, v6, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->isBurstShot:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZZ)V

    return-void
.end method
