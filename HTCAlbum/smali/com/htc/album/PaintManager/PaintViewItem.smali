.class public Lcom/htc/album/PaintManager/PaintViewItem;
.super Ljava/lang/Object;
.source "PaintViewItem.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintable;


# static fields
.field public static final INK_STATE_DIRTY:I = 0x1

.field public static final INK_STATE_DISPLAYED:I = 0x3

.field public static final INK_STATE_LOADED:I = 0x2

.field public static final INK_STATE_LOADING:I = 0x0

.field public static final INK_STATE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mIndex:I

.field private mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

.field private mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

.field private mIsDirty:Z

.field private mIsPrepared:Z

.field private mIsPreparedInkView:Z

.field private mModifyTime:J

.field private mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

.field private mStateInkData:I

.field private mStateInkPaint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PaintViewItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iput-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsPrepared:Z

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsDirty:Z

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkData:I

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkPaint:I

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsPreparedInkView:Z

    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    new-instance v0, Lcom/htc/album/PaintManager/PaintViewPort3D;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/PaintViewPort3D;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    return-wide v0
.end method

.method public getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v4, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v4, v4

    iget v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIII[B)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/PaintViewItem;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][PaintViewItem][getInkCacheData]: index: "

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]: filep: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]: modet: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]: files: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]: byted: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getStrokeData()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\n[HTCAlbum][PaintViewItem][getInkCacheData]:......................... "

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    return-object v0
.end method

.method public getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;
    .locals 8

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    const/4 v7, 0x0

    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v4, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v4, v4

    iget v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIIILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    return-object v0
.end method

.method public getInkData()[B
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getStrokeData()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getInkPaint()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getModifyTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    return-wide v0
.end method

.method public getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    return-object v0
.end method

.method public getStateInkData()I
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkData:I

    return v0
.end method

.method public getStateInkPaint()I
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkPaint:I

    return v0
.end method

.method public isDirtyPaint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsDirty:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsPrepared:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    return-void
.end method

.method public setDirtyPaint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsDirty:Z

    return-void
.end method

.method public setFileCacheInfo(ILjava/lang/String;JJ)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setRotation(F)V

    iput-object p2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iput-wide p5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    return-void
.end method

.method public setInkData([B)V
    .locals 9

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v4, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v4, v4

    iget v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIII[B)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkData:Lcom/htc/opensense2/album/cache/InkCacheTask;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v5, v5

    iget v6, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v7, 0x0

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/cache/InkCacheTask;->updateContent(ILjava/lang/String;JIII[B)V

    goto :goto_0
.end method

.method public setInkPaint(Landroid/graphics/Bitmap;)V
    .locals 9

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/album/PaintManager/PaintViewItem;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][HtcPaintManager][setInkPaint]: New: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v4, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v4, v4

    iget v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v6, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/InkCacheTask;-><init>(Ljava/lang/String;JIIILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mInkPaint:Lcom/htc/opensense2/album/cache/InkCacheTask;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFilePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mModifyTime:J

    iget-wide v5, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mFileSize:J

    long-to-int v5, v5

    iget v6, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIndex:I

    const/4 v7, 0x0

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/cache/InkCacheTask;->updateContent(ILjava/lang/String;JIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPrepared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mIsPrepared:Z

    return-void
.end method

.method public setStateInkData(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkData:I

    return-void
.end method

.method public setStateInkPaint(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mStateInkPaint:I

    return-void
.end method

.method public setViewPort(Lcom/htc/album/PaintManager/PaintViewPort3D;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/PaintManager/PaintViewItem;->mPaintView:Lcom/htc/album/PaintManager/PaintViewPort3D;

    return-void
.end method
