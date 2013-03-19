.class public Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
.super Lcom/htc/sunnyCore/view/SView;
.source "FilmstripViewChildItem.java"

# interfaces
.implements Lcom/htc/sunnyCore/ViewItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunnyCore/view/SView;",
        "Lcom/htc/sunnyCore/ViewItem",
        "<",
        "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final FIXED_CHILD_HEIGHT:I = 0x0

.field private static final FIXED_SHADOW_HEIGHT:I = 0x4c

.field private static LOG_TAG:Ljava/lang/String; = null

.field protected static final SPRITE_LAYER_COUNT:I = 0x5

.field protected static final SPRITE_LAYER_DRM:I = 0x4

.field protected static final SPRITE_LAYER_DRM_CORRUPT:I = 0x2

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x0

.field protected static final SPRITE_LAYER_MAIN_BACKGROUND:I = 0x0

.field protected static final SPRITE_LAYER_MAIN_COUNT:I = 0x2

.field protected static final SPRITE_LAYER_MAIN_IMAGE:I = 0x1

.field protected static final SPRITE_LAYER_PLAYABLE:I = 0x3

.field protected static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x1

.field private static sTextureManager:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDrm:Z

.field private isPlayable:Z

.field protected mCenterXOffset:I

.field protected mCenterYOffset:I

.field private mEnableShadow:Z

.field protected mFrame:Landroid/graphics/Rect;

.field protected mItemHeight:I

.field private mItemRoot:Lcom/htc/sunnyCore/SceneNode;

.field protected mItemWidth:I

.field protected mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

.field protected mOriginX:I

.field protected mOriginY:I

.field private mScale:F

.field private mShadowRatio:F

.field private mShowShadow:Z

.field private mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

.field private mSpriteMain:Lcom/htc/sunnyCore/Sprite;

.field protected mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

.field private mTextureHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIPVIEW_ITEM_HEIGHT:I

    sput v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShadowRatio:F

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    sget v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    return-void
.end method


# virtual methods
.method public attachToScene(Lcom/htc/sunnyCore/SceneNode;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    const/4 v0, 0x1

    return v0
.end method

.method public attachToSceneNode(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunnyCore/SceneNode;)Z

    return-void
.end method

.method public bindData(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eq v6, p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    check-cast p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-nez v6, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    if-gez v2, :cond_3

    add-int/lit16 v2, v2, 0x168

    :cond_3
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v6, :cond_8

    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    :goto_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    if-ne v6, v8, :cond_4

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    :cond_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    :cond_5
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setDrm(Z)V

    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPlayable(Z)V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    invoke-virtual {v6, v9, v10, v11}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v6, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    add-int/lit8 v6, v6, 0x4c

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    :cond_6
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x5a

    if-eq v2, v6, :cond_b

    const/16 v6, 0x10e

    if-ne v2, v6, :cond_e

    :cond_b
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v4

    :goto_3
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_c

    const-string v6, "image/jps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v0, :cond_c

    div-int/lit8 v5, v5, 0x2

    :cond_c
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    invoke-static {v5, v4, v6}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v3

    aget v6, v3, v7

    sget v9, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v6, v9, :cond_d

    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v6, v3, v7

    :cond_d
    aget v6, v3, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v4

    goto :goto_3

    :cond_f
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto/16 :goto_2
.end method

.method public bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    return-void
.end method

.method public bridge synthetic bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 0

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    return-void
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunnyCore/ViewItem",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/htc/sunnyCore/ViewItem",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public create(I)V
    .locals 17

    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    if-nez v6, :cond_0

    sget-object v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v7, "create mSpriteMain NG"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    sget-object v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v6

    if-eqz v6, :cond_2

    if-nez v15, :cond_2

    :cond_1
    sget-object v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v7, "create - SunnyContext or shared texture is empty, unable to set share resources to sprite"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    iget-object v14, v15, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v14}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v6

    int-to-float v2, v6

    invoke-virtual {v14}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v6

    int-to-float v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v14}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    iget-object v13, v15, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v6

    int-to-float v3, v6

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v6

    int-to-float v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v7, v7

    sub-float v5, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    neg-float v6, v6

    sget v7, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v13}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    iget-object v11, v15, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v6

    int-to-float v4, v6

    invoke-virtual {v11}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v6

    int-to-float v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    iget-object v12, v15, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v6

    int-to-float v5, v6

    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    iget-object v0, v15, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget v6, v15, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v15, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    goto/16 :goto_1
.end method

.method public destroy()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SunnyContext or shared texture is empty"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    goto :goto_0
.end method

.method public detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    return-void
.end method

.method public enableShadow(Z)V
    .locals 3

    const/high16 v2, 0x4218

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1, v1, v1}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1, v2, v1}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1, v2, v1}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    goto :goto_0
.end method

.method public getBottom()I
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getData()Lcom/htc/sunnyCore/IMediaData;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    return v0
.end method

.method public getIsCorrupted()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCenter()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    return v0
.end method

.method public getItemRootNode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getItemScale()F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    return v0
.end method

.method public getLeft()I
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRight()I
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSprite()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getSpriteIndicator()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTop()I
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    return v0
.end method

.method public getXCenterOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    return v0
.end method

.method public getYCenterOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    return v0
.end method

.method public loadResources(Landroid/content/Context;ILcom/htc/sunnyCore/SunnyContext;)V
    .locals 4

    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "loadResources NG - SunnyContext is 0"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadResources - create sharedTexture for sunnyContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;-><init>(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    const v1, 0x7f02001f

    invoke-static {p1, v1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    const v1, 0x2080054

    invoke-static {p1, v1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    const v1, 0x7f020026

    invoke-static {p1, v1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    const v1, 0x7f02001e

    invoke-static {p1, v1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    const v1, 0x7f020024

    invoke-static {p1, v1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    const v1, 0x7f020003

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    invoke-static {p1, v1, v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_0

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadResources, init referenceCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public offsetLeftAndRight(I)V
    .locals 4

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetPosition(IFFF)V

    return-void
.end method

.method public releaseResources()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "releaseResources NG - SunnyContext is 0"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseResources, referenceCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseResources - Shared texture release for mSunnyContetx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setCorrupted(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setDrm(Z)V
    .locals 14

    const/4 v13, 0x4

    const/high16 v3, 0x4000

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->getGeometry()[I

    move-result-object v7

    const/4 v1, 0x2

    aget v11, v7, v1

    const/4 v1, 0x3

    aget v10, v7, v1

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    sub-int v8, v1, v2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    add-int v9, v1, v2

    if-ne v8, v11, :cond_1

    if-eq v9, v10, :cond_2

    :cond_1
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setItemScale(FZ)V
    .locals 3

    const/high16 v1, 0x3f80

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_2

    move v0, v1

    :goto_0
    if-nez p2, :cond_0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    :cond_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v2, v0, v0, v1}, Lcom/htc/sunnyCore/SceneNode;->setScale(FFF)V

    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setPlayable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public setPosition(IIZ)V
    .locals 4

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    :goto_0
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetPosition(IFFF)V

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    goto :goto_0
.end method

.method public setRenderOrder(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    return-void
.end method

.method public setTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 17

    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunnyCore/Texture;->getSourceWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunnyCore/Texture;->getSourceHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v9, :cond_0

    if-lez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2, v9, v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->setDisplayImageDimension(II)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    if-eqz v11, :cond_1

    const-string v2, "image/jps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v10, :cond_1

    div-int/lit8 v9, v9, 0x2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v12

    rem-int/lit16 v12, v12, 0x168

    if-gez v12, :cond_2

    add-int/lit16 v12, v12, 0x168

    :cond_2
    const/16 v2, 0x5a

    if-eq v12, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v12, v2, :cond_4

    :cond_3
    move v15, v9

    move v9, v8

    move v8, v15

    :cond_4
    sget v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    invoke-static {v9, v8, v2}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v14

    const/4 v2, 0x0

    aget v2, v14, v2

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v2, v3, :cond_5

    const/4 v2, 0x0

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v3, v14, v2

    :cond_5
    const/4 v2, 0x0

    aget v2, v14, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    sget v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setDrm(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPlayable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    iget-object v7, v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v16, 0x4000

    div-float v6, v6, v16

    sub-float/2addr v5, v6

    neg-float v5, v5

    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-nez v2, :cond_b

    :cond_8
    :goto_1
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    goto :goto_0

    :cond_a
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v13, :cond_7

    iget-object v0, v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 p1, v0

    goto :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    if-nez v2, :cond_8

    goto :goto_1

    :cond_c
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public unbindData()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    return-void
.end method

.method public unbindDataWithoutSetTexture()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    return-void
.end method

.method public unbindMediaData()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    return-void
.end method
