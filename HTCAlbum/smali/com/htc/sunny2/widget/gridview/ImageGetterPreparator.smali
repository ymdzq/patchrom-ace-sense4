.class public Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;
.source "ImageGetterPreparator.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentDecodeHandler:I

.field mCurrentIdx:I

.field mDecodeFlow:I

.field mFirstVisibleIndex:I

.field mItemCount:I

.field mLastVisibleIndex:I

.field mMedialist:Lcom/htc/sunnyCore/IMediaList;

.field mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

.field mTextures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ImageGetterPreparator"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bind(ILcom/htc/sunnyCore/IMediaList;I)V
    .locals 1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mItemCount:I

    :cond_0
    return-void
.end method

.method public deInit()V
    .locals 0

    return-void
.end method

.method public freeOutOfRange(III)V
    .locals 0

    return-void
.end method

.method public get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/Texture;

    return-object v0
.end method

.method public getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;I)Lcom/htc/sunnyCore/Texture;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/Texture;

    return-object v0
.end method

.method public getViewTexture(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V
    .locals 0

    return-void
.end method

.method public iterate(J)V
    .locals 12

    const/4 v8, 0x4

    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    if-ne v5, v11, :cond_2

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mFirstVisibleIndex:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mLastVisibleIndex:I

    if-gt v5, v6, :cond_1

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    packed-switch v5, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mFirstVisibleIndex:I

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mContext:Landroid/content/Context;

    const v6, 0x7f020026

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    const/4 v7, 0x0

    invoke-interface {v5, v9, v6, v7}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_3
    iput v10, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    invoke-virtual {v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    move-result v3

    if-eqz v3, :cond_4

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    const/16 v7, 0xae

    const/16 v8, 0xae

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    move-result v3

    if-eqz v3, :cond_5

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    move-result v3

    if-eqz v3, :cond_6

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    :cond_6
    iput v11, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunnyCore/IMediaList;

    if-nez v5, :cond_7

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunnyCore/IMediaList;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    invoke-interface {v5, v6}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    if-nez v2, :cond_8

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_9

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    :cond_9
    iput v8, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    :pswitch_4
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v3

    if-nez v3, :cond_a

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    :cond_a
    if-ne v3, v10, :cond_b

    const/4 v5, 0x5

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    :cond_b
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    :pswitch_5
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mScaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentDecodeHandler:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    const/4 v7, 0x0

    invoke-interface {v5, v9, v6, v7}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    :cond_c
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mCurrentIdx:I

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mDecodeFlow:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public loadRange(IIIJ)V
    .locals 0

    return-void
.end method

.method public notifyDataItemChanged(II)V
    .locals 0

    return-void
.end method

.method public notifyDataItemChanged(III)V
    .locals 0

    return-void
.end method

.method public pausePreparator()V
    .locals 0

    return-void
.end method

.method public queryThumbnailTexture(I)Lcom/htc/sunnyCore/Texture;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/Texture;

    return-object v0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public resetDecodeDirection()V
    .locals 0

    return-void
.end method

.method public resumePreparator()V
    .locals 0

    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0

    return-void
.end method

.method public setDecodeDirection(I)V
    .locals 0

    return-void
.end method

.method public setVisibleRange(III)V
    .locals 0

    iput p2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mFirstVisibleIndex:I

    iput p3, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mLastVisibleIndex:I

    return-void
.end method

.method public unbind(I)V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mMedialist:Lcom/htc/sunnyCore/IMediaList;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mItemCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparator;->mTextures:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
