.class public Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "GridItemThumbnail.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemOverlayState;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;


# static fields
.field private static final FLAG_DRM:I = 0x2

.field private static final FLAG_PLAYABLE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GridItemThumbnail"

.field private static final SPRITE_LAYER_ARROW_DOWN:I = 0x3

.field private static final SPRITE_LAYER_BACKGROUND:I = 0x0

.field private static final SPRITE_LAYER_BACKGROUND_LIGHT:I = 0x1

.field private static final SPRITE_LAYER_BESTSHOT:I = 0x10

.field private static final SPRITE_LAYER_BOTTOM_TEXT:I = 0x2

.field private static final SPRITE_LAYER_BURSTSHOT:I = 0xf

.field private static final SPRITE_LAYER_CENTER_TEXT:I = 0x4

.field private static final SPRITE_LAYER_COUNT:I = 0x13

.field private static final SPRITE_LAYER_DELETE:I = 0xb

.field private static final SPRITE_LAYER_DRM:I = 0xa

.field private static final SPRITE_LAYER_DRM_CORRUPT:I = 0x7

.field public static final SPRITE_LAYER_EVENT_BACKGROUND:I = 0x11

.field public static final SPRITE_LAYER_EVENT_FOREGROUND:I = 0x12

.field private static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x5

.field private static final SPRITE_LAYER_INKED:I = 0xd

.field private static final SPRITE_LAYER_IS_3D:I = 0xe

.field private static final SPRITE_LAYER_PICKER:I = 0xb

.field private static final SPRITE_LAYER_PLAYABLE:I = 0x9

.field private static final SPRITE_LAYER_SELECTOR:I = 0xc

.field protected static final SPRITE_LAYER_THUMBNAIL:I = 0x8

.field private static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x6


# instance fields
.field protected mBgTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBottomTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBottomView:Landroid/view/View;

.field protected mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

.field protected mCenterTextView:Landroid/widget/TextView;

.field protected mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

.field private mPrivateFlag:I

.field protected mShareTextureKey:Ljava/lang/String;

.field protected mSprite:Lcom/htc/sunnyCore/Sprite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemThumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemThumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    return-void
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez p2, :cond_1

    const-string v8, "GridItemThumbnail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Sunny2Framework][GridItemThumbnail][bindMediaData]: null:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p2

    const/4 v4, 0x0

    instance-of v8, v3, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v8, :cond_a

    move-object v4, v3

    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    const/16 v8, 0xff

    invoke-virtual {v6, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    instance-of v8, p2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v8, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v8

    if-ne v10, v8, :cond_2

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v11, 0xf

    invoke-virtual {v8, v11}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v8

    if-ne v10, v8, :cond_3

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v11, 0x10

    invoke-virtual {v8, v11}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    invoke-interface {v8, p1, p0, v3}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V

    :cond_4
    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_5
    move v8, v10

    :goto_1
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setPlayable(Z)V

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    instance-of v8, v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v8, :cond_6

    move-object v8, v3

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setInked(Z)V

    :cond_6
    instance-of v8, v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v8, :cond_c

    move-object v8, v3

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v8

    if-eqz v8, :cond_c

    move v2, v10

    :goto_2
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setIs3D(Z)V

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setCorrupted(Z)V

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v10, v8, :cond_7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v8, :cond_8

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-interface {v8, p1, v3}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    :cond_8
    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v5

    rem-int/lit16 v5, v5, 0x168

    if-gez v5, :cond_9

    add-int/lit16 v5, v5, 0x168

    :cond_9
    invoke-virtual {v6, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    instance-of v8, v3, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    if-eqz v8, :cond_0

    move-object v8, v3

    check-cast v8, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setCenterText(Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getCenterText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBottomText(Ljava/lang/Object;)V

    check-cast v3, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getBackground()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBackground(I)V

    goto/16 :goto_0

    :cond_a
    const-string v8, "GridItemThumbnail"

    const-string v9, "[Sunny2Framework][GridItemThumbnail][bindMediaData]: not instance of IMediaDataGallery"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v8, v9

    goto/16 :goto_1

    :cond_c
    move v2, v9

    goto :goto_2
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 51

    invoke-super/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v44

    if-nez v44, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v44

    const/4 v3, 0x0

    move-object/from16 v0, v44

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    :cond_0
    move-object/from16 v0, v44

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v44

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move/from16 v40, v0

    move/from16 v0, v41

    neg-int v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v5, v3, v4

    move/from16 v0, v40

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float v6, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_1

    const/16 v3, 0x13

    invoke-static {v3}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->setTouchable(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    move/from16 v0, v41

    int-to-float v3, v0

    move/from16 v0, v40

    int-to-float v4, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    const-string v4, "NAME_TEXTURE_BACKGROUND_DARK"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    move/from16 v0, v41

    int-to-float v3, v0

    move/from16 v0, v40

    int-to-float v4, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    const-string v4, "NAME_TEXTURE_BACKGROUND_LIGHT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/16 v47, 0x0

    const/16 v42, 0x5

    :goto_0
    const/4 v3, 0x7

    move/from16 v0, v42

    if-lt v3, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    const/4 v3, 0x5

    move/from16 v0, v42

    if-ne v3, v0, :cond_3

    const-string v3, "NAME_TEXTUREE_IMAGE_CORRUPT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v47

    :cond_2
    :goto_1
    invoke-virtual/range {v47 .. v47}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v8, v3

    invoke-virtual/range {v47 .. v47}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/4 v12, 0x0

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v7, v3, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    add-int/lit8 v42, v42, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    move/from16 v0, v42

    if-ne v3, v0, :cond_4

    const-string v3, "NAME_TEXTUREE_VIDEO_CORRUPT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v47

    goto :goto_1

    :cond_4
    const/4 v3, 0x7

    move/from16 v0, v42

    if-ne v3, v0, :cond_2

    const-string v3, "NAME_TEXTUREE_DRM_CORRUPT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v47

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v8

    add-int/lit8 v3, v41, -0x2

    int-to-float v9, v3

    add-int/lit8 v3, v40, -0x2

    int-to-float v10, v3

    const/4 v13, 0x0

    move v11, v5

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v9

    const-string v3, "NAME_TEXTUREE_PLAYABLE"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v10, v3

    invoke-virtual/range {v43 .. v43}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v11, v3

    const/4 v14, 0x0

    move v12, v5

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v9, v3, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v10

    const-string v3, "NAME_TEXTUREE_INKED"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v39

    invoke-virtual/range {v38 .. v38}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v37

    move/from16 v0, v39

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    move/from16 v0, v40

    int-to-float v3, v0

    move/from16 v0, v37

    int-to-float v4, v0

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    sub-float v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v13, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v14, v3

    :cond_6
    move/from16 v0, v39

    int-to-float v11, v0

    move/from16 v0, v37

    int-to-float v12, v0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v10, v3, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v15

    const-string v3, "NAME_TEXTUREE_BURSTSHOT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v36

    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v34

    move/from16 v0, v36

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    move/from16 v0, v40

    int-to-float v3, v0

    move/from16 v0, v34

    int-to-float v4, v0

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    sub-float v14, v3, v4

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v20, 0x0

    move/from16 v18, v13

    move/from16 v19, v14

    invoke-virtual/range {v15 .. v20}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v15, v3, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v16

    const-string v3, "NAME_TEXTUREE_BESTSHOT"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v33

    invoke-virtual/range {v32 .. v32}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v31

    move/from16 v0, v33

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    move/from16 v0, v40

    int-to-float v3, v0

    move/from16 v0, v31

    int-to-float v4, v0

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    sub-float v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v13, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v14, v3

    :cond_7
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v21, 0x0

    move/from16 v19, v13

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v17

    const-string v3, "NAME_TEXTUREE_3D"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v46

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v30

    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v29

    move/from16 v0, v41

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v30

    int-to-float v4, v0

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    add-float v13, v3, v4

    move/from16 v0, v29

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v13, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v14, v3

    :cond_8
    :goto_2
    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v18, v0

    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v19, v0

    const/16 v22, 0x0

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-virtual/range {v17 .. v22}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v18

    const-string v3, "NAME_TEXTUREE_DRM"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v48

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v28

    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v27

    move/from16 v0, v28

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    move/from16 v0, v27

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v13, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v14, v3

    :cond_9
    :goto_3
    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v19, v0

    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    const/16 v23, 0x0

    move/from16 v21, v13

    move/from16 v22, v14

    invoke-virtual/range {v18 .. v23}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v19

    const/16 v50, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v3, v4, :cond_f

    const-string v3, "NAME_TEXTUREE_UNPICKED"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v50

    move/from16 v0, v41

    int-to-float v3, v0

    neg-float v3, v3

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    int-to-float v4, v4

    add-float v13, v3, v4

    move/from16 v0, v40

    int-to-float v3, v0

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    int-to-float v4, v4

    sub-float v14, v3, v4

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v21, v0

    const/16 v24, 0x0

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-virtual/range {v19 .. v24}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :cond_a
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v20

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v25, 0x0

    move/from16 v23, v5

    move/from16 v24, v6

    invoke-virtual/range {v20 .. v25}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    const-string v4, "NAME_TEXTUREE_SELECTED"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v45

    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v45

    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v21

    const-string v3, "NAME_TEXTUREE_ARROW_DOWN"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v49

    move v13, v5

    invoke-virtual/range {v49 .. v49}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f07001f

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float v14, v3, v4

    const/4 v3, 0x0

    cmpl-float v3, v3, v14

    if-gtz v3, :cond_b

    move/from16 v0, v40

    int-to-float v3, v0

    cmpl-float v3, v14, v3

    if-lez v3, :cond_c

    :cond_b
    const-string v3, "GridItemThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(fGeoPosX, fGeoPosY) = ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ")"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v6

    :cond_c
    invoke-virtual/range {v49 .. v49}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v22, v0

    invoke-virtual/range {v49 .. v49}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v23, v0

    const/16 v26, 0x0

    move/from16 v24, v13

    move/from16 v25, v14

    invoke-virtual/range {v21 .. v26}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v45

    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v45

    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void

    :cond_d
    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move/from16 v0, v41

    int-to-float v4, v0

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_X:I

    int-to-float v4, v4

    add-float v13, v3, v4

    invoke-virtual/range {v46 .. v46}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_Y:I

    int-to-float v4, v4

    sub-float v14, v3, v4

    goto/16 :goto_2

    :cond_e
    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    invoke-virtual/range {v48 .. v48}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    goto/16 :goto_3

    :cond_f
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v3, v4, :cond_a

    const-string v3, "NAME_TEXTUREE_DELETE"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    invoke-virtual/range {v50 .. v50}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v21, v0

    const/16 v24, 0x0

    move/from16 v22, v5

    move/from16 v23, v6

    invoke-virtual/range {v19 .. v24}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto/16 :goto_4
.end method

.method protected enableLayerArrowDown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public freeResource()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    :cond_4
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V

    return-void
.end method

.method protected getBottomLayerOriginPosY(F)F
    .locals 2

    const/high16 v1, 0x40c0

    sub-float v0, p1, v1

    return v0
.end method

.method protected getBottomTextLayer()Lcom/htc/sunnyCore/Sprite$Layer;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomTextLayout()I
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030010

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03000f

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method protected getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    .locals 2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackground(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v4, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected setBottomText(Ljava/lang/Object;)V
    .locals 22

    const/4 v2, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getBottomTextLayer()Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->enableLayerArrowDown()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v13, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v12, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move v14, v13

    if-eqz p1, :cond_7

    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getBottomTextLayout()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v14, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomView:Landroid/view/View;

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->updateBottomViewContent(Landroid/view/View;Ljava/lang/Object;)V

    const/high16 v3, 0x4000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v11, v10}, Landroid/view/View;->measure(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v8, v3, v4, v14, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v19

    neg-int v3, v13

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v5, v3, v4

    div-int/lit8 v3, v19, 0x2

    sub-int v3, v12, v3

    int-to-float v6, v3

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v6, v3

    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, v6, v3

    if-ltz v3, :cond_2

    int-to-float v3, v12

    cmpl-float v3, v6, v3

    if-lez v3, :cond_3

    :cond_2
    const-string v3, "GridItemThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setBottomText] mImgOriginalY = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", nItemH = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", viewH/2 = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v7, v19, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", M1="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v20, 0x7f07001f

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v3, v19, 0x2

    sub-int v3, v12, v3

    int-to-float v6, v3

    :cond_3
    int-to-float v3, v14

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    if-nez v18, :cond_6

    invoke-static {v8}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v18

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v16

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v7, v14

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v7, v7, v20

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    if-eqz v17, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getBottomLayerOriginPosY(F)F

    move-result v6

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    if-eqz v17, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_2
.end method

.method protected setCenterText(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v11, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v10, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    if-eqz p1, :cond_3

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v11, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextView:Landroid/widget/TextView;

    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x4000

    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v2, -0x8000

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v14, v9, v8}, Landroid/widget/TextView;->measure(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v14, v2, v3, v11, v6}, Landroid/widget/TextView;->layout(IIII)V

    neg-int v2, v11

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    int-to-float v2, v10

    const/high16 v3, 0x4000

    div-float v5, v2, v3

    int-to-float v2, v11

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    if-nez v15, :cond_2

    invoke-static {v14}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v15

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v15}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    :goto_1
    invoke-virtual {v15}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v13

    invoke-virtual {v15}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v6, v11

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v6, v6, v16

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v12

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    :goto_2
    return-void

    :cond_1
    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v15, v14}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_2
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    return-void
.end method

.method public setCorrupted(Z)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_1
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    const/4 v1, 0x0

    instance-of v4, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_1
.end method

.method public setInked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public setIs3D(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 8

    const/16 v7, 0xff

    const/4 v6, 0x0

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    invoke-virtual {v2, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v3, "NAME_TEXTUREE_PICKED"

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v2, v6, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    :cond_1
    const-string v3, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    :goto_2
    invoke-virtual {v2, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlayable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move/from16 v0, p1

    iput v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v14, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v13, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v2, v3, :cond_2

    const-string v2, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v15, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v16

    int-to-float v2, v14

    neg-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    int-to-float v3, v3

    add-float v4, v2, v3

    int-to-float v2, v13

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v2, v3, :cond_0

    const-string v2, "NAME_TEXTUREE_DELETE"

    invoke-virtual {v15, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    int-to-float v2, v14

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float v9, v2, v3

    int-to-float v2, v13

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v8, v2

    const/4 v11, 0x0

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto/16 :goto_0
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :cond_0
    return-void
.end method

.method protected updateBottomViewContent(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public workaround_SetBestIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public workaround_SetBurstIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method
