.class public Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
.super Ljava/lang/Object;
.source "FilmstripViewScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;,
        Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final DEFAULT_SPACING:I = 0x3

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private FLAG_GALLERY_BOUNCE:Z

.field protected INVALID_POSITION:I

.field protected mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mChildrenCount:I

.field private mCloseOverbound:Z

.field protected mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

.field protected mDefaultChildHeight:I

.field protected mDefaultChildWidth:I

.field private mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mDownTouchPosition:I

.field private mEnableChildShadow:Z

.field protected mEnv:I

.field protected mFirstPosition:I

.field protected mGalleryLeft:I

.field protected mGalleryRight:I

.field protected mGalleryY:I

.field private mIsOnlineTagEditor:Z

.field protected mItemCount:I

.field private mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mLastPosition:I

.field private mMaxScrollOverhead:I

.field private mNewCreatedChildCount:I

.field protected mNextSelectedPosition:I

.field mOldSelectedPosition:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mParentNode:Lcom/htc/sunnyCore/SceneNode;

.field private mRecycler:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;",
            ">;"
        }
    .end annotation
.end field

.field mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

.field protected mSceneNode:Lcom/htc/sunnyCore/SceneNode;

.field private mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mSelectedPosition:I

.field private mShouldCallbackOnUnselectedItemClick:Z

.field protected mShouldStopFling:Z

.field protected mSpacing:I

.field private mSpecialSpacing:I

.field private mSpecialSpacingPrev:I

.field private mStartAnimationChildIndex:I

.field private mTouchFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    const/16 v0, 0x170

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDefaultChildWidth:I

    const/16 v0, 0x113

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDefaultChildHeight:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsOnlineTagEditor:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    const/16 v0, 0x50

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->FLAG_GALLERY_BOUNCE:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mCloseOverbound:Z

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnv:I

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    return-void
.end method

.method private addItemToArray(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V
    .locals 6

    const/4 v4, 0x0

    if-gez p2, :cond_0

    iget p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    array-length v2, v0

    if-ne p2, v1, :cond_2

    if-ne v2, v1, :cond_1

    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    :cond_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    aput-object p1, v0, v3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunnyCore/SceneNode;)Z

    :goto_0
    return-void

    :cond_2
    if-ge p2, v1, :cond_4

    if-ne v2, v1, :cond_3

    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    :goto_1
    aput-object p1, v0, p2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunnyCore/SceneNode;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private detachItemsFromParent(II)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne v2, v1, :cond_1

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    goto :goto_0
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    add-int v3, v8, v9

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachItemsFromParent(II)V

    if-eqz p1, :cond_1

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    sub-int v4, v8, v9

    add-int/lit8 v5, v6, -0x1

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    move v7, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private fillToGalleryLeft()V
    .locals 8

    const/4 v7, 0x0

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    if-eq v5, v3, :cond_2

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    if-ne v0, v5, :cond_2

    :cond_0
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    sub-int v1, v5, v6

    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_1
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    neg-int v1, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldStopFling:Z

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryRight()V
    .locals 10

    const/4 v9, 0x1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v6

    if-eqz v6, :cond_3

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int v1, v7, v4

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    if-eq v7, v3, :cond_2

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    add-int/lit8 v7, v7, 0x1

    if-eq v1, v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    if-ne v1, v7, :cond_2

    :cond_0
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    add-int v0, v7, v8

    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    iput-boolean v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldStopFling:Z

    sget-object v7, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[fillToGalleryRight] Should not be here, prevIterationView == null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    add-int v0, v7, v3

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 6

    if-gez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v1, :cond_1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    sget-object v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeAndAddItem] Num of children created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iput-object v3, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnv:I

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->create(I)V

    :cond_1
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setupChild(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;IIZ)V

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeAndAddItem] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 5

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private offsetSpecialChildrenLeftAndRight(IIII)V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p2, v6

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_5

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemScale()F

    move-result v5

    const v6, 0x3f8147ae

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_2

    invoke-virtual {v0, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    :cond_0
    :goto_1
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    if-ne p2, v6, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-float v7, v9, v5

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v8

    invoke-static {v6, v5, v7, v8}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v7

    if-le v6, v7, :cond_0

    invoke-virtual {v0, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    goto :goto_1

    :cond_3
    if-eq v2, v3, :cond_1

    if-le v3, v2, :cond_4

    neg-int v6, p4

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    neg-int v6, p3

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private performItemSelected()V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->onItemSelect(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    :cond_0
    return-void
.end method

.method private scrollToChild(IZZZ)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getCenterOfGallery()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v5

    sub-int v3, v4, v5

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    invoke-interface {v4, v3, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->scrollToPosition(IZ)V

    :cond_1
    return v0

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItemPosition()I

    move-result v2

    if-eqz p3, :cond_4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_4

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    goto :goto_1
.end method

.method private setSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    return-void
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    :cond_2
    const v2, 0x7fffffff

    const/4 v6, 0x0

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v4, v8, -0x1

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    move v6, v4

    :cond_3
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int v5, v8, v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    invoke-direct {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v2, :cond_5

    move v2, v1

    move v6, v4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setupChild(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;IIZ)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->addItemToArray(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->enableShadow(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    :cond_0
    invoke-virtual {p1, p3, v2, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPosition(IIZ)V

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public attachToParent(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    return-void
.end method

.method public cacheSpecialSpecialSpacing()V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    return-void
.end method

.method public deCacheSpecialSpacing()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    return-void
.end method

.method protected detachAllItemsFromScene()V
    .locals 6

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public detachFromParent()V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[detachFromParent] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[detachFromParent] mNewCreatedChildCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", childrenToDestroy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/SceneNode;->release()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    return-void
.end method

.method public enableChildShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    return-void
.end method

.method public getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClickedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    return-object v0
.end method

.method public getClickedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    return v0
.end method

.method public getGalleryRight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->FLAG_GALLERY_BOUNCE:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mCloseOverbound:Z

    if-nez v6, :cond_6

    if-eqz p1, :cond_1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    :goto_0
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    if-nez v1, :cond_2

    move v5, p2

    :cond_0
    :goto_1
    return v5

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    if-gt v2, v4, :cond_3

    div-int/lit8 p2, p2, 0x2

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    if-lt v2, v4, :cond_5

    div-int/lit8 p2, p2, 0x2

    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    :goto_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    if-nez v1, :cond_8

    move v5, p2

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    const/4 v4, 0x0

    if-eqz p1, :cond_a

    if-le v2, v4, :cond_0

    :cond_9
    sub-int v0, v4, v2

    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_a
    if-lt v2, v4, :cond_9

    goto :goto_1

    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getSceneNode()Lcom/htc/sunnyCore/SceneNode;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    return-object v0
.end method

.method public getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    return v0
.end method

.method public getSelection()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    return v0
.end method

.method public getStartAnimationChildIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    return v0
.end method

.method public initSpecialSpacingLayout()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->initSpecialSpacingLayout(Z)V

    return-void
.end method

.method public initSpecialSpacingLayout(Z)V
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    :cond_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    goto :goto_0
.end method

.method public notifyMediaDataChangeIRTLock(I)V
    .locals 3

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0
.end method

.method public onHitTestDown(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    goto :goto_0
.end method

.method public onHitTestUp()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp(Z)V

    return-void
.end method

.method public onHitTestUp(Z)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v2, v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->scrollToChild(IZZZ)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)Z

    :cond_1
    return-void
.end method

.method public declared-synchronized onLayout(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryY:I

    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    neg-int v1, v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemSelected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onMediaItemRefreshIRT(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    goto :goto_0
.end method

.method public onMediaItemRefreshSizeIRT(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    goto :goto_0
.end method

.method public performItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->onItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 9

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v4, v2, -0x1

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getTop()I

    move-result v6

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    if-gt v5, p1, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v5

    if-ge p1, v5, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getBottom()I

    move-result v5

    if-gt v5, p2, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getTop()I

    move-result v5

    if-ge p2, v5, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/2addr v5, v4

    :goto_2
    return v5

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    goto :goto_2
.end method

.method public rebindVisibleItems()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v3, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public relayoutWithCenterSpacing(I)V
    .locals 6

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v0, v4, v5

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    if-ne v0, v3, :cond_0

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_1

    :cond_1
    neg-int v4, p1

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setIsOnlineTagEditor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsOnlineTagEditor:Z

    return-void
.end method

.method public setItemTexture(ILcom/htc/sunnyCore/Texture;)V
    .locals 3

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->initSpecialSpacingLayout(Z)V

    goto :goto_0
.end method

.method public setMediaDataListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaDataCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    goto :goto_0
.end method

.method public setSceneListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    return-void
.end method

.method public declared-synchronized setSelection(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    return-void
.end method

.method public setSpecialSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    return-void
.end method

.method public setStartAnimationChildIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FilmstripViewScene][setVisibility]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trackMotionScroll(IZ)V
    .locals 4

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->offsetSpecialChildrenLeftAndRight(IIII)V

    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachOffScreenChildren(Z)V

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    :goto_3
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectionToCenterChild()V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemSelected()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->offsetChildrenLeftAndRight(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    goto :goto_3
.end method
