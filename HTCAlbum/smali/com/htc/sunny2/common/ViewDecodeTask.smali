.class public Lcom/htc/sunny2/common/ViewDecodeTask;
.super Lcom/htc/sunny2/common/IterationTaskGallery;
.source "ViewDecodeTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewDecodeTask"


# instance fields
.field private mBeginTimeMillis:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIdentifier:Ljava/lang/String;

.field private mMediaData:Lcom/htc/sunnyCore/IMediaData;

.field private mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

.field private mView:Landroid/view/View;

.field private mViewId:Ljava/lang/String;

.field private mViewResId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewResId:I

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBeginTimeMillis:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mID:I

    return-void
.end method

.method private printDebugLog()V
    .locals 10

    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    instance-of v7, v4, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v7, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/htc/sunnyCore/IMediaDataFolder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ViewDecodeTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[printDebugLog] DisplayName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DateName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    if-eqz v6, :cond_0

    const-string v7, "ViewDecodeTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[printDebugLog] View identifier "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v7, "ViewDecodeTask"

    const-string v8, "[printDebugLog]"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    return-object v0
.end method

.method public getResultBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getViewId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewResId()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewResId:I

    return v0
.end method

.method public onCancel()V
    .locals 3

    const-string v0, "ViewDecodeTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCancel] MediaItem identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnd()V
    .locals 6

    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "ViewDecodeTask"

    const-string v1, "[onEnd] Bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "ViewDecodeTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onEnd] MediaItem identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ViewDecodeTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onEnd] Total spend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBeginTimeMillis:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onIterate()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mView:Landroid/view/View;

    if-nez v3, :cond_0

    const-string v5, "ViewDecodeTask"

    const-string v6, "[onIterate] view is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lt v4, v5, :cond_1

    if-ge v2, v5, :cond_2

    :cond_1
    const-string v5, "ViewDecodeTask"

    const-string v6, "[onIterate] View width or height < 1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ViewDecodeTask;->printDebugLog()V

    goto :goto_0

    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onSetup()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBeginTimeMillis:J

    iget-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    iget-object v2, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const-string v5, "ViewDecodeTask"

    const-string v6, "[onSetup] MediaData or Prototype is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    :cond_2
    invoke-interface {v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-interface {v2, v1, v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mView:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    sub-long/2addr v5, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "ViewDecodeTask"

    const-string v6, "[onSetup]"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mIdentifier:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewResId:I

    iput-object v1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mViewId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mBeginTimeMillis:J

    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;->release()V

    return-void
.end method

.method public setMediaData(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    return-void
.end method

.method public setPrototype(Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/ViewDecodeTask;->mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    return-void
.end method
