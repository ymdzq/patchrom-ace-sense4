.class public Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;
.super Lcom/htc/sunny2/widget/gridview/EventGridView;
.source "EventGridViewWithPrepNotify.java"

# interfaces
.implements Lcom/htc/sunnyCore/Preparator$UpdateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventGridViewWithPrepNotify"


# instance fields
.field private mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

.field private mViewTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/EventGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mViewTopMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    return-void
.end method

.method private onUpdateScreenControl(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    :goto_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    if-lt v5, v4, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->getY()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->getHeight()I

    move-result v6

    add-int v3, v5, v6

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->getY()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v6

    sub-int v2, v5, v6

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->getBreakMarginBot()I

    move-result v5

    if-gt v5, v3, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->getBreakMarginTop()I

    move-result v5

    if-le v5, v2, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    if-ne v7, p1, :cond_4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v5, v4, v8, v7}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;Z)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v5, v4, v8}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method public attachScreenControl(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridViewScreenControl;)V
    .locals 0

    check-cast p1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    return-void
.end method

.method public createResource()V
    .locals 3

    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->createResource()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1, p0, v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->attachIRT(Landroid/content/Context;Lcom/htc/sunnyCore/view/SViewGroup;Lcom/htc/sunnyCore/SceneNode;)V

    :cond_0
    return-void
.end method

.method public freeResource()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->detachIRT()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->freeResource()V

    return-void
.end method

.method public notifyMediaDataChange()V
    .locals 1

    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->notifyMediaDataChange()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->onUpdateScreenControl(Z)V

    return-void
.end method

.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->notifyMediaDataInvalidate(I)V

    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 5

    if-eqz p3, :cond_0

    const-string v2, "BUNDLE_FLAG"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    instance-of v2, v1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v2, :cond_1

    const-string v2, "EventGridViewWithPrepNotify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFailed] file corrupted, item index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->fileCorrupted()V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->notifyMediaDataInvalidate(I)V

    goto :goto_0
.end method

.method protected onLayout(ZFFFII)V
    .locals 4

    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/widget/gridview/EventGridView;->onLayout(ZFFFII)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mViewTopMargin:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->onLayout(III)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->detachIRT()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1, p0, v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->attachIRT(Landroid/content/Context;Lcom/htc/sunnyCore/view/SViewGroup;Lcom/htc/sunnyCore/SceneNode;)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->onUpdateScreenControl(Z)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->notifyMediaDataInvalidate(I)V

    return-void
.end method

.method protected onScrollerLeaveTop()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setVisibility(Z)V

    goto :goto_0
.end method

.method protected onScrollerReachTop()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setVisibility(Z)V

    goto :goto_0
.end method

.method protected reportScrollStateChange(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->reportScrollStateChange(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->onUpdateScreenControl(Z)V

    return-void
.end method

.method public setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V

    :cond_0
    return-void
.end method

.method public setViewTopMargin(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mViewTopMargin:I

    return-void
.end method
