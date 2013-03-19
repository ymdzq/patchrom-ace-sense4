.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
.super Ljava/lang/Object;
.source "ParamsPreparator.java"

# interfaces
.implements Lcom/htc/sunnyCore/IParamsPreparator;


# instance fields
.field protected mCacheSet:I

.field protected mDimension:I

.field private mEnableBorder:Z

.field private mEnableFileCache:Z

.field private mExtra:Landroid/os/Bundle;

.field protected mFileCacheSize:I

.field protected mIsViewBackgroundDecode:Z

.field protected mMaxTextureCount:I

.field protected mMemoryCacheSize:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableFileCache:Z

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mDimension:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mCacheSet:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableBorder:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mExtra:Landroid/os/Bundle;

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mMaxTextureCount:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mMemoryCacheSize:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mFileCacheSize:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mIsViewBackgroundDecode:Z

    return-void
.end method

.method public static spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;-><init>()V

    return-object v0
.end method


# virtual methods
.method public enableBorder()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableBorder:Z

    return-void
.end method

.method public enableFileCache()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableFileCache:Z

    return-void
.end method

.method public enableViewBackgroundDecode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mIsViewBackgroundDecode:Z

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    const/high16 v0, -0x100

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCacheSet()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mCacheSet:I

    return v0
.end method

.method public getDimension()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mDimension:I

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFileCacheSize()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mFileCacheSize:I

    return v0
.end method

.method public getMaxTextureCount()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mMaxTextureCount:I

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mMemoryCacheSize:I

    return v0
.end method

.method public getSpecialMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableBorder:Z

    return v0
.end method

.method public isEnableFileCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mEnableFileCache:Z

    return v0
.end method

.method public isEnableViewBackgroundDecode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mIsViewBackgroundDecode:Z

    return v0
.end method

.method public setCacheSet(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mCacheSet:I

    return-void
.end method

.method public setDimension(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mDimension:I

    return-void
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method public setMaxTextureCount(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mMaxTextureCount:I

    return-void
.end method
