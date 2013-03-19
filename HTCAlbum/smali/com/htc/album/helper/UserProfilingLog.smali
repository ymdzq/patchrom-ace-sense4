.class public Lcom/htc/album/helper/UserProfilingLog;
.super Ljava/lang/Object;
.source "UserProfilingLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/UserProfilingLog$4;,
        Lcom/htc/album/helper/UserProfilingLog$PROFILE;
    }
.end annotation


# static fields
.field private static final APPID:Ljava/lang/String; = "com.htc.album"

.field public static final BURST_BESTSHOT:Ljava/lang/String; = "best_shot"

.field public static final BURST_COVER:Ljava/lang/String; = "cover"

.field public static final BURST_DELETE:Ljava/lang/String; = "delete"

.field public static final BURST_ENTRY:Ljava/lang/String; = "entry_count"

.field public static final BURST_EXPAND:Ljava/lang/String; = "expand"

.field private static final CATEGORY_ALBUM_SHAREVIA:Ljava/lang/String; = "Share"

.field private static final CATEGORY_ALBUM_SLIDESHOW:Ljava/lang/String; = "Slideshow"

.field private static final CATEGORY_ALBUM_SRC:Ljava/lang/String; = "album_source"

.field private static final CATEGORY_BURST_AUTO_REVIEW:Ljava/lang/String; = "burst_auto_review"

.field private static final CATEGORY_BURST_SHOT:Ljava/lang/String; = "burst_shot"

.field private static final CATEGORY_DLNA:Ljava/lang/String; = "dlna"

.field private static final CATEGORY_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final CATEGORY_SHOW_HIDE_ITEM:Ljava/lang/String; = "show_hide_item"

.field private static final CATEGORY_SOCIAL_SERVICE_FEATURES:Ljava/lang/String; = "social_service_features"

.field private static final CATEGORY_STORAGE:Ljava/lang/String; = "storage"

.field public static final DLNA_LOCAL_DMC:Ljava/lang/String; = "local_photo_dmc_count"

.field public static final DLNA_MEDIASERVER_DMC:Ljava/lang/String; = "mediaserver_photo_dmc_count"

.field private static final EFFECT_COUNT:Ljava/lang/String; = "count"

.field private static final EFFECT_NAME:Ljava/lang/String; = "effect"

.field public static final FAVORITE_COUNT:Ljava/lang/String; = "count"

.field private static final LOG_TAG:Ljava/lang/String; = "UserProfilingLog"

.field private static final SHARE_COUNT:Ljava/lang/String; = "count"

.field private static final SHARE_NAME:Ljava/lang/String; = "service"

.field public static final SHOWHIDE_ALBUM:Ljava/lang/String; = "local_album"

.field public static final SHOWHIDE_FRIEND:Ljava/lang/String; = "social_friend"

.field public static final SOCIALSERVICE_COMMENTS:Ljava/lang/String; = "comments"

.field public static final SOCIALSERVICE_LOCAL_UPLOADER:Ljava/lang/String; = "local_uploader"

.field public static final SOCIALSERVICE_ONLINE_UPLOADER:Ljava/lang/String; = "online_uploader"

.field private static final SRC_NAME:Ljava/lang/String; = "service_name"

.field private static final SRC_TYPE:Ljava/lang/String; = "service_type"

.field private static final STORAGE_ALLFOLDER:Ljava/lang/String; = "total_folder"

.field private static final STORAGE_ALLPHOTO:Ljava/lang/String; = "total_photo"

.field private static final STORAGE_ALLVIDEO:Ljava/lang/String; = "total_video"

.field private static sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogData(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static dumpUserAccessCount()V
    .locals 2

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$1;

    invoke-direct {v1}, Lcom/htc/album/helper/UserProfilingLog$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static logSourceSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/helper/UserProfilingLog$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static logStorageContent(III)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/album/helper/UserProfilingLog$3;-><init>(III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static logStorageContent(Ljava/util/ArrayList;)V
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

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ge v7, v1, :cond_1

    const/4 v5, 0x4

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-le v5, v4, :cond_5

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v2

    goto :goto_2

    :cond_4
    const-string v7, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v3

    goto :goto_2

    :cond_5
    invoke-static {v1, v2, v3}, Lcom/htc/album/helper/UserProfilingLog;->logStorageContent(III)V

    goto :goto_0
.end method

.method public static logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "UserProfilingLog"

    const-string v2, "[HTCAlbum][UserProfilingLog][logUserAccessCount]: no key..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog$4;->$SwitchMap$com$htc$album$helper$UserProfilingLog$PROFILE:[I

    invoke-virtual {p0}, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogShareVia(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogSlideShow(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogBurstShot(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogBurstAutoReview(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogDlna(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->onLogFavorite()V

    goto :goto_0

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogShowHideItem(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogSocialServiceFeatures(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static onLogBurstAutoReview(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogBurstShot(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogData(Ljava/util/Set;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    const-string v3, "com.htc.album"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static onLogDlna(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogFavorite()V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "count"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UserProfilingLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][UserProfilingLog][onLogFavorite]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "count"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogShareVia(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogShowHideItem(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogSlideShow(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogSocialServiceFeatures(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
