.class public Lcom/htc/opensense2/album/cache/CacheCountMgr;
.super Ljava/lang/Object;
.source "CacheCountMgr.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_THUMBS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_DELETE_THUMBS"

.field public static final ACTION_PAUSE_GENTHUMBNAILS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_PAUSE_GENTHUMBNAILS"

.field public static final ACTION_RESUME_GENTHUMBNAILS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_RESUEM_GENTHUMBNAILS"

.field public static final ARR_SUBFOLDER:[Ljava/lang/String; = null

.field public static final CACHE_FILE_EXT:Ljava/lang/String; = ".jpg"

.field public static final EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static EXTERNAL_THUMBNAIL_COUNT:[J = null

.field public static final EventView_PREFIX:Ljava/lang/String; = "13-"

.field public static final FILMSTRIP_PREFIX:Ljava/lang/String; = "11-"

.field public static final FullSCREEN_PREFIX:Ljava/lang/String; = "12-"

.field public static final GRID_PREFIX:Ljava/lang/String; = "XX-"

#the value of this static final field might be set in the static constructor
.field public static final IDX_FILMSTRIP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IDX_FULLSCREEN:I = 0x0

.field public static final INTENT_SCAN_FINISH:Ljava/lang/String; = "android.intent.action.HTC_MEDIACACHE_SCANFINISH"

.field public static LOG_S:Ljava/lang/String; = null

.field public static LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_FILMSTRIPTHUMB:I = 0x12c

.field public static final MAX_FULLSCREENTHUMB:I = 0x1e

.field public static final MAX_GRIDTHUMB:I = 0x7d0

#the value of this static final field might be set in the static constructor
.field public static final MAX_GRIDTHUMB_FOLDER:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_THUMB_FOLDER_COUNT:I = 0x0

.field private static MIN_SPACE_DIV_BLOCK_SIZE:[D = null

.field private static final PATTERN_NEW_BURST:Ljava/util/regex/Pattern; = null

.field public static final PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static PHONE_THUMBNAIL_COUNT:[J = null

.field public static final REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static REMOVALBE_THUMBNAIL_COUNT:[J = null

.field private static final STORAGE_MIN_SPACE:J = 0x100000L

.field public static final THUMBNAIL_VERSION:I = 0x64

.field public static final UNKNOW:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

.field public static final USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

.field private static USB_THUMBNAIL_COUNT:[J

.field public static bResetCalculate:Z

.field protected static mScreenlarge:I

.field private static m_szExternalPath:Ljava/lang/String;

.field private static m_szExternalThumbnailPath:Ljava/lang/String;

.field private static m_szPhoneStorage:Ljava/lang/String;

.field private static m_szPhoneThumbnailPath:Ljava/lang/String;

.field private static m_szRemovablePath:Ljava/lang/String;

.field private static m_szRemovealbeThumbnailPath:Ljava/lang/String;

.field private static m_szUsbPath:Ljava/lang/String;

.field private static m_szUsbThumbnailPath:Ljava/lang/String;

.field public static mbInitExternalFolder:Z

.field public static mbInitPhoneFolder:Z

.field public static mbInitRemoveableFolder:Z

.field public static mbInitUsblFolder:Z

.field protected static sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;


# instance fields
.field protected mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

.field private mCacheScanFinish:Landroid/content/BroadcastReceiver;

.field private mRegCacheScanFinish:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    const-string v0, "(.*IMAG\\d+_BURST)\\d+.*"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PATTERN_NEW_BURST:Ljava/util/regex/Pattern;

    const-string v0, "CacheCountMgr"

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    sput v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    new-array v0, v5, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    const-string v0, "CacheCountMgr"

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_S:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-direct {v0, v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-direct {v0, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-direct {v0, v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->UNKNOW:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_SUBFOLDER:[Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_GRIDTHUMB_FOLDER:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_THUMB_FOLDER_COUNT:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FILMSTRIP:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FULLSCREEN:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    sput-boolean v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    sput-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/opensense2/album/cache/CacheInfo;

    const-string v1, "com.htc.MediaCacheService.ACTION_DELETE_EVENTTHUMBS"

    const-string v2, "CacheInfoEventView"

    sget-object v3, Lcom/htc/opensense2/album/cache/CacheCountDef;->EVENT_ARR_FOLDER:[Ljava/lang/String;

    sget v4, Lcom/htc/opensense2/album/cache/CacheCountDef;->EVENT_MAX_VIEWFOLDER:I

    const-wide/16 v5, 0x12c

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/CacheInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr$1;-><init>(Lcom/htc/opensense2/album/cache/CacheCountMgr;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final CalcFolderCount(Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v2

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderIndex(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v3, 0x1

    aget-wide v5, v2, v1

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "[CalcFolderCount]"

    invoke-static {v2, p0, v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final CalculateAll(Z)Z
    .locals 4

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    sget-boolean v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[EXTERNAL_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[REMOVALBE_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[USB_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[PHONE_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v3
.end method

.method private static final CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 8

    const/4 v7, 0x1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isExternalStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_0

    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v1, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_0
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    if-nez v6, :cond_1

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isRemovableStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetRemovableFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_1

    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v4, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_1
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isUsbStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetUsbFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_2

    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v5, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_2
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    if-nez v6, :cond_3

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v6

    if-ne v6, v7, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isPhoneStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_3

    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v3, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_3
    return v7
.end method

.method public static final CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    move-object v4, p0

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    array-length v3, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception v7

    throw v7

    :catch_0
    move-exception v7

    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static final Delete_All_Thumbnails([Ljava/lang/String;)V
    .locals 23

    :try_start_0
    move-object/from16 v0, p0

    array-length v12, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v12, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v20, 0x0

    aget-object v20, p0, v20

    invoke-static/range {v20 .. v20}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_2

    aget-object v15, p0, v11

    invoke-static {v15}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->generateBurstValue(Ljava/lang/String;)[C

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    sget-object v20, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_SUBFOLDER:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v12, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(-B-.*)-100"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/htc/opensense2/album/cache/CacheCountDef;->All_THUMBNAUILS_FOLDER:[Ljava/lang/String;

    aget-object v21, v21, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v9, v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_4

    aget-object v7, v5, v8

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    const-string v21, "-"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catch_0
    move-exception v10

    const-string v20, "CacheCountMgr"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Delete_All_Thumbnails]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static final GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 15

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v13, 0x40

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    iget-wide v8, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iget v13, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    int-to-long v3, v13

    iget-wide v6, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iget-object v13, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-static {v13}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isBurstImage(Ljava/lang/String;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    iget-object v13, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-static {v13}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->generateBurstValue(Ljava/lang/String;)[C

    move-result-object v12

    :cond_0
    const/16 v13, 0x65

    if-ne v2, v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v1

    const-string v13, "XX-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v0, :cond_a

    const/16 v13, 0x2d

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "B-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    :cond_1
    const/16 v13, 0xa

    if-ne v2, v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v1

    iget v13, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v13, :cond_2

    const-string v13, "13-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v13, "XX-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v13, 0xb

    if-ne v2, v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v1

    const-string v13, "11-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    const/16 v13, 0xc

    if-ne v2, v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v1

    const-string v13, "12-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    const/16 v13, 0xd

    if-eq v2, v13, :cond_6

    const/16 v13, 0xe

    if-ne v2, v13, :cond_9

    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v1

    const/16 v13, 0xd

    if-ne v2, v13, :cond_7

    const-string v13, "13-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    const/16 v13, 0xe

    if-ne v2, v13, :cond_8

    const-string v13, "13-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "L-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    const-string v13, "13-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    const/16 v13, 0x2d

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static final GetCacheTaskFactorParam(Landroid/content/Context;)I
    .locals 3

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetCacheTaskFactorParam]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    return v0
.end method

.method public static final GetDMCCachePath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->CreateDMCCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetFolderName(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GetDMCCachePath2]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static final GetFolderIndex(Ljava/lang/String;)I
    .locals 4

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    const-string v3, "11-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    const-string v3, "12-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, -0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static final GetFolderName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "11-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    aget-object v1, v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "12-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v0, v1

    if-gez v0, :cond_3

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    neg-int v2, v0

    aget-object v1, v1, v2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method private static final GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V
    .locals 9

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    array-length v2, p0

    const/4 v1, 0x0

    :goto_1
    sget v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    if-ge v1, v7, :cond_5

    if-ge v1, v2, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v7, 0x0

    aput-wide v7, p0, v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    int-to-long v7, v7

    aput-wide v7, p0, v1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static final GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J
    .locals 2

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_1

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_2

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_0

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    goto :goto_0
.end method

.method public static final GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    .locals 5

    if-nez p0, :cond_0

    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0
.end method

.method public static final LogIt([JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_S:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MediaCacheService]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final ResetCalculateAll(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    return-void
.end method

.method private static generateBurstValue(Ljava/lang/String;)[C
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PATTERN_NEW_BURST:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getBurstGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    return-object v0
.end method

.method public static final getExternalStoragePath()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;
    .locals 1

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;

    invoke-direct {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    return-object v0
.end method

.method public static final getPhoneStoragePath()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    return-object v1
.end method

.method private static final getPhoneStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getRemovalbStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method public static final getRemovalbeStoragePath()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    return-object v1
.end method

.method public static final getUsbStoragePath()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getUsbStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method private static isBurstImage(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v2}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v2}, Lcom/htc/album/helper/FileOperationHelper;->isOldBurstImage(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final isExternalStorageMounted()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isFilmThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 5

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isFullThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 5

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x1e

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isGetRemovableFolderId()Z
    .locals 7

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v4, "DeviceStorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isGetRemovableFolderId]-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static final isGetUsbFolderId()Z
    .locals 7

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v4, "DeviceStorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isGetUsbFolderId]-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static final isGridThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 6

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    sget v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    if-ge v1, v4, :cond_0

    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x7d0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final isMediCacheServiceThumbnails(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "XX-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v3, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "11-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "12-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static final isPhoneStorageMounted()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isRemovableStorageMounted()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isSupportPhoneStorage()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupportRemovalbeStorage()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupportUsbStorage()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasUsbDeviceSlot()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isUsbStorageMounted()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_DELETE_THUMBS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static final sendPauseCacheIntent(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_PAUSE_GENTHUMBNAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static final sendResumeCacheIntent(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_RESUEM_GENTHUMBNAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static final toUpperCaseLength8([C)[C
    .locals 6

    const/16 v5, 0x8

    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p0, v1

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    aput-char v3, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le v2, v5, :cond_2

    :goto_1
    return-object p0

    :cond_2
    new-array v0, v5, [C

    fill-array-data v0, :array_0

    const/4 v3, 0x0

    rsub-int/lit8 v4, v2, 0x8

    invoke-static {p0, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_1

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method


# virtual methods
.method public GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->CreateDMCCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetFolderName(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GetCacheFullPath][GetDMCCachePath1]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v4, :cond_3

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-virtual {v5, v4}, Lcom/htc/opensense2/album/cache/CacheInfo;->CreateCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    iget v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfo;->GetFolderName(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-virtual {v5, v4}, Lcom/htc/opensense2/album/cache/CacheInfo;->CreateCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    iget v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfo;->GetFolderName(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asynAddCache(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p2}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->isDMCCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->calculateDMCFolder(Z)Z

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->addDMCFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_0

    sget-object v5, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->DMC720P:Ljava/lang/String;

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez p5, :cond_1

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    invoke-virtual {v5, p2}, Lcom/htc/opensense2/album/cache/CacheInfo;->isRightCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfo;->calculateFolder(Z)Z

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    invoke-virtual {v5, p2, v1}, Lcom/htc/opensense2/album/cache/CacheInfo;->addFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    invoke-virtual {v5, v1}, Lcom/htc/opensense2/album/cache/CacheInfo;->IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    invoke-virtual {v5, p5, v4}, Lcom/htc/opensense2/album/cache/CacheInfo;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][asynAddCache]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    throw v5

    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CalculateAll(Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CalcFolderCount(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGridThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_4

    const-string v5, "XX-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isFilmThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_5

    const-string v5, "11-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isFullThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_0

    const-string v5, "12-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][asynUpdateCache]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    throw v4
.end method

.method public deInitCacheMgr(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deInitCacheMgr]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deInitCacheMgr]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    throw v1
.end method

.method public initCacheMgr(Landroid/content/Context;)V
    .locals 5

    if-eqz p1, :cond_1

    :try_start_0
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initCacheMgr]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ResetCalculateAll(Z)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HTC_MEDIACACHE_SCANFINISH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initCacheMgr]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    throw v2
.end method

.method public isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_4

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    :cond_0
    :goto_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    mul-int v9, v5, v6

    int-to-long v3, v9

    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isStorageSpaceAvailable] Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Storage threshold = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/32 v11, 0x100000

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", AvailableBlocks = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", BlockSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Free Space = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    aget-wide v11, v11, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    aget-wide v9, v9, v2

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    sget-object v11, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    if-lez v6, :cond_6

    const-wide/32 v9, 0x100000

    int-to-long v12, v6

    div-long/2addr v9, v12

    long-to-double v9, v9

    :goto_1
    aput-wide v9, v11, v2

    :cond_2
    int-to-double v9, v5

    sget-object v11, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    aget-wide v11, v11, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_7

    const/4 v0, 0x1

    :goto_2
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_3

    if-nez v0, :cond_3

    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[isStorageSpaceAvailable] Storage space is less than 1M"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    :try_start_1
    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_5

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    goto/16 :goto_0

    :cond_5
    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_6
    const-wide v9, 0x41dfffffffc00000L

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[externalStorageChecker] Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 1

    iget-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    return-void
.end method
