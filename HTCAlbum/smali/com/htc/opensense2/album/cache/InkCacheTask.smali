.class public Lcom/htc/opensense2/album/cache/InkCacheTask;
.super Lcom/htc/sunny2/frameworks/cache/CacheTask;
.source "InkCacheTask.java"


# instance fields
.field mGroupId:I

.field mMarkDelete:Z

.field mStrokeData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;JIIILandroid/graphics/Bitmap;)V
    .locals 8

    const/16 v1, 0x65

    int-to-long v5, p4

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mMarkDelete:Z

    iput-object p7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mGroupId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIII[B)V
    .locals 8

    const/16 v1, 0x66

    int-to-long v5, p4

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mMarkDelete:Z

    iput-object p7, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B

    iput p6, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mGroupId:I

    return-void
.end method


# virtual methods
.method public getDrawerGroupId()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mGroupId:I

    return v0
.end method

.method public getStrokeData()[B
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateContent(ILjava/lang/String;JIIILandroid/graphics/Bitmap;)V
    .locals 9

    int-to-long v6, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v8, p6

    invoke-super/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move/from16 v0, p7

    iput v0, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mGroupId:I

    return-void
.end method

.method public updateContent(ILjava/lang/String;JIII[B)V
    .locals 9

    int-to-long v6, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v8, p6

    invoke-super/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B

    move/from16 v0, p7

    iput v0, p0, Lcom/htc/opensense2/album/cache/InkCacheTask;->mGroupId:I

    return-void
.end method
