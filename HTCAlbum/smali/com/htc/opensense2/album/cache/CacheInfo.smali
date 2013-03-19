.class public Lcom/htc/opensense2/album/cache/CacheInfo;
.super Ljava/lang/Object;
.source "CacheInfo.java"


# instance fields
.field protected ACTION_DELETE_THUMBS:Ljava/lang/String;

.field protected ARR_FOLDER:[Ljava/lang/String;

.field protected EXTERNAL_COUNT:[J

.field protected LOG_TAG:Ljava/lang/String;

.field protected MAX_THUMB_COUNT:J

.field protected PHONE_COUNT:[J

.field protected REMOVALBE_COUNT:[J

.field protected USB_COUNT:[J

.field protected mbInitExternalFolder:Z

.field protected mbInitPhoneFolder:Z

.field protected mbInitRemoveableFolder:Z

.field protected mbInitUsblFolder:Z

.field protected mbResetCalculate:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbResetCalculate:Z

    iput-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitExternalFolder:Z

    iput-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitRemoveableFolder:Z

    iput-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitUsblFolder:Z

    iput-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitPhoneFolder:Z

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ACTION_DELETE_THUMBS:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->EXTERNAL_COUNT:[J

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->REMOVALBE_COUNT:[J

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->USB_COUNT:[J

    iput-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->PHONE_COUNT:[J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->MAX_THUMB_COUNT:J

    iput-object p1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ACTION_DELETE_THUMBS:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->LOG_TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    new-array v0, p4, [J

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->EXTERNAL_COUNT:[J

    new-array v0, p4, [J

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->REMOVALBE_COUNT:[J

    new-array v0, p4, [J

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->USB_COUNT:[J

    new-array v0, p4, [J

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->PHONE_COUNT:[J

    iput-wide p5, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->MAX_THUMB_COUNT:J

    return-void
.end method

.method private GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->EXTERNAL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->REMOVALBE_COUNT:[J

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->USB_COUNT:[J

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->PHONE_COUNT:[J

    goto :goto_0
.end method


# virtual methods
.method public final CreateCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 3

    const-string v0, "/Android/data/com.htc.album/.thumbnails/"

    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitExternalFolder:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v1, :cond_0

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/cache/CacheFolderCreator;->CreateExternalFolder(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitExternalFolder:Z

    :cond_0
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitRemoveableFolder:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v1, :cond_1

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/cache/CacheFolderCreator;->CreateRemoveableFolder(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitRemoveableFolder:Z

    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitUsblFolder:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v1, :cond_2

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/cache/CacheFolderCreator;->CreateUsbFolder(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitUsblFolder:Z

    :cond_2
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitPhoneFolder:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v1, :cond_3

    const-string v1, "/Android/data/com.htc.album/.thumbnails/"

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/cache/CacheFolderCreator;->CreatePhoneFolder(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbInitPhoneFolder:Z

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public final GetFolderName(J)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheInfo;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->MAX_THUMB_COUNT:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final ResetCalculateAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbResetCalculate:Z

    return-void
.end method

.method public final addFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J
    .locals 3

    invoke-direct {p0, p2}, Lcom/htc/opensense2/album/cache/CacheInfo;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->addFolderCount([JLjava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;[Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public final calculateFolder(Z)Z
    .locals 4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbResetCalculate:Z

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->mbResetCalculate:Z

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->EXTERNAL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->REMOVALBE_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->USB_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->PHONE_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->GetThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->EXTERNAL_COUNT:[J

    const-string v1, ""

    const-string v2, "[EXTERNAL_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->REMOVALBE_COUNT:[J

    const-string v1, ""

    const-string v2, "[REMOVALBE_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->USB_COUNT:[J

    const-string v1, ""

    const-string v2, "[USB_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->PHONE_COUNT:[J

    const-string v1, ""

    const-string v2, "[PHONE_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v3
.end method

.method public final isRightCache(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->isRightCache(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ARR_FOLDER:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheInfo;->ACTION_DELETE_THUMBS:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/htc/opensense2/album/cache/CacheInfoUtil;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
