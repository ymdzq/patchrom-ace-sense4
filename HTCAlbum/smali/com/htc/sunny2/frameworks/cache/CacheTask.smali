.class public Lcom/htc/sunny2/frameworks/cache/CacheTask;
.super Ljava/lang/Object;
.source "CacheTask.java"


# static fields
.field public static final FLAG_ENABLE_PHOTO_DMC:I = 0x1

.field public static SCALADO_BITMAP_COUNT:I

.field public static THUMBNAIL_VERSION:I


# instance fields
.field public mCacheBmp:Landroid/graphics/Bitmap;

.field public mCacheOutputFolder:Ljava/lang/String;

.field public mCacheOutputName:Ljava/lang/String;

.field public mCacheOutputPath:Ljava/lang/String;

.field public mCacheSet:I

.field public mCacheType:I

.field public mColorDepth:I

.field public mExtra:Ljava/lang/Object;

.field public mFactor:I

.field public mFileCacheSize:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mFlag:I

.field public mIdentifier:Ljava/lang/String;

.field public mModifyTime:J

.field public mOrientation:I

.field public mPosition:I

.field private mScaladoBitmapHandle:I

.field public mUseCacheService:Z

.field public mUseScaladoBitmap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->THUMBNAIL_VERSION:I

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputFolder:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputName:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJIZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJIZ)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseScaladoBitmap:Z

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputFolder:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputName:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mOrientation:I

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    invoke-virtual/range {p0 .. p8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    return-void
.end method


# virtual methods
.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCacheSet()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    return v0
.end method

.method public getScaladoBitmapHandle()I
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CacheTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++SCALADO_BITMAP_COUNT [CacheTask][getScaladoBitmapHandle]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    if-nez v0, :cond_1

    const-string v0, "CacheTask"

    const-string v1, "[HTCAlbum][CacheTask][getScaladoBitmapHandle]mScaladoBitmapHandle is still 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    return v0
.end method

.method public getScaladoBitmapHandleWithoutNew()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    return v0
.end method

.method public release()V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CacheTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--SCALADO_BITMAP_COUNT [CacheTask][release]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mScaladoBitmapHandle:I

    :cond_1
    return-void
.end method

.method public setFactor(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateContent(ILjava/lang/String;JJI)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    return-void
.end method

.method public updateContent(ILjava/lang/String;JJIZ)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iput-wide p5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iput p7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput-boolean p8, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    return-void
.end method
