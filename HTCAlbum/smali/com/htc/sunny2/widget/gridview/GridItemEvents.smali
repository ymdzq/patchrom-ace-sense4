.class public Lcom/htc/sunny2/widget/gridview/GridItemEvents;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "GridItemEvents.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemOverlayState;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final BOTTOM_GAP_OF_TWO_LINE_H_DIMENSION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final BOTTOM_TEXTVIEW_PLATE_H_DIMENSION:I = 0x0

.field private static final DIMENSION_BOTTOM_GAP_OF_TWO_LINE_H:[I = null

.field private static final DIMENSION_BOTTOM_TEXTVIEW_PLATE_H:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "GridItemEvents"

.field protected static final SPRITE_LAYER_BACKGROUND:I = 0x0

.field protected static final SPRITE_LAYER_BACKGROUND_LIGHT:I = 0x2

.field protected static final SPRITE_LAYER_BOTTOM_TEXT:I = 0x5

.field protected static final SPRITE_LAYER_BOTTOM_TEXT_PLATE:I = 0x4

.field private static final SPRITE_LAYER_COUNT:I = 0x6

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x3

.field protected static final SPRITE_LAYER_THUMBNAIL:I = 0x1


# instance fields
.field protected mBgTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBottomTextView:Landroid/view/View;

.field protected mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

.field private mEllipsizeLength:F

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

.field private mPrivateFlag:I

.field protected mShareTextureKey:Ljava/lang/String;

.field protected mSprite:Lcom/htc/sunnyCore/Sprite;

.field private mTextDateTime:Landroid/widget/TextView;

.field private mTextDateTimeCenter:Landroid/widget/TextView;

.field private mTextName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->DIMENSION_BOTTOM_TEXTVIEW_PLATE_H:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->DIMENSION_BOTTOM_GAP_OF_TWO_LINE_H:[I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->DIMENSION_BOTTOM_TEXTVIEW_PLATE_H:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->BOTTOM_TEXTVIEW_PLATE_H_DIMENSION:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->DIMENSION_BOTTOM_GAP_OF_TWO_LINE_H:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->BOTTOM_GAP_OF_TWO_LINE_H_DIMENSION:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mEllipsizeLength:F

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mPrivateFlag:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemEvents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mEllipsizeLength:F

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mPrivateFlag:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemEvents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    return-void
.end method

.method private getBottomViewPlateHeight()I
    .locals 3

    sget v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->BOTTOM_TEXTVIEW_PLATE_H_DIMENSION:I

    sget v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    if-eqz v1, :cond_1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->updateBottomViewPlateHeight()Z

    move-result v2

    if-ne v1, v2, :cond_0

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    goto :goto_0
.end method

.method private setupGeometryOfBottomText(II)V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/4 v5, 0x0

    move v8, p1

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomViewPlateHeight()I

    move-result v7

    neg-int v1, p1

    int-to-float v1, v1

    div-float v6, v1, v9

    move v3, v6

    int-to-float v1, p2

    int-to-float v2, v7

    div-float/2addr v2, v9

    sub-float v4, v1, v2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    int-to-float v1, v8

    int-to-float v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    int-to-float v1, v8

    int-to-float v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method private updateBottomViewPlateHeight()Z
    .locals 7

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    add-int v4, v3, v2

    add-int/2addr v4, v0

    sget v5, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->BOTTOM_GAP_OF_TWO_LINE_H_DIMENSION:I

    add-int/2addr v4, v5

    sput v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    const/4 v1, 0x1

    const-string v4, "GridItemEvents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GridItemEvents][updateBottomViewPlateHeight] new bottom view height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-direct {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setupGeometryOfBottomText(II)V

    :cond_0
    return v1
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 4

    if-nez p2, :cond_0

    const-string v1, "GridItemEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GridItemEvents][bindMediaData]: null:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    instance-of v1, p2, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    invoke-interface {v1, p1, p0, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-interface {v1, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    instance-of v1, v1, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v1, p1, v0}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->getViewTexture(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setBottomTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    :cond_2
    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->isCorrupted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setCorrupted(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "GridItemEvents"

    const-string v2, "[HTCAlbum][GridItemEvents][bindMediaData]: not instance of IMediaDataFolder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 14

    const/4 v13, 0x1

    const/high16 v2, 0x4000

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v8

    iput v12, v8, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    :cond_0
    iget v1, v8, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v7, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v6, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    neg-int v1, v7

    int-to-float v1, v1

    div-float v3, v1, v2

    int-to-float v1, v6

    div-float v4, v1, v2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v1, :cond_1

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunnyCore/Sprite;->setTouchable(Z)V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    int-to-float v1, v7

    int-to-float v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK"

    invoke-virtual {v8, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    int-to-float v1, v7

    int-to-float v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const-string v1, "NAME_TEXTURE_BACKGROUND_LIGHT"

    invoke-virtual {v8, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    invoke-virtual {v0, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    add-int/lit8 v1, v7, -0x2

    int-to-float v1, v1

    add-int/lit8 v2, v6, -0x2

    int-to-float v2, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    invoke-virtual {v0, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getTextPlateType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v11

    if-eqz v9, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v0, v12, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    :cond_2
    invoke-direct {p0, v7, v6}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setupGeometryOfBottomText(II)V

    const-string v1, "NAME_TEXTUREE_IMAGE_CORRUPT"

    invoke-virtual {v8, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    invoke-virtual {v0, v12, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    invoke-virtual {v0, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method public freeResource()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    :cond_3
    :try_start_0
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getBottomTextLayer()Lcom/htc/sunnyCore/Sprite$Layer;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomTextLayout()I
    .locals 1

    const v0, 0x7f030014

    return v0
.end method

.method public getCacheSet()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getWidth()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeId()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRowQuota()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    .locals 2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTextPlateType()Ljava/lang/String;
    .locals 1

    const-string v0, "NAME_TEXTURE_EVENT_PLATE"

    return-object v0
.end method

.method public getVCropPosition()F
    .locals 1

    const/high16 v0, 0x3f00

    return v0
.end method

.method public getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 9

    const/high16 v8, 0x4000

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v5

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextView:Landroid/view/View;

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getViewResId(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->inflateViewContainer(I)Landroid/view/View;

    move-result-object p2

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextView:Landroid/view/View;

    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->updateBottomViewContent(Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomViewPlateHeight()I

    move-result v3

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2, v7, v7, v4, v3}, Landroid/view/View;->layout(IIII)V

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomViewPlateHeight()I

    move-result v2

    if-eq v3, v2, :cond_3

    move v3, v2

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2, v7, v7, v4, v3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    move-object v5, p2

    goto :goto_0
.end method

.method public getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 5

    instance-of v3, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    const-string v3, "GridItemEvents"

    const-string v4, "[getViewId] viewId is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getPrototypeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const-string v3, "GridItemEvents"

    const-string v4, "[getViewId] mediaData null or not IMediaDataFolder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getViewResId(Lcom/htc/sunnyCore/IMediaData;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomTextLayout()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    return v0
.end method

.method public inflateViewContainer(I)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomTextLayout()I

    move-result v4

    if-eq p1, v4, :cond_0

    const-string v4, "GridItemEvents"

    const-string v5, "[inflateViewContainer] Unsupported view res id"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomViewPlateHeight()I

    move-result v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackground(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v4, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected setBottomText(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomTextLayer()Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    if-nez p1, :cond_0

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/htc/sunnyCore/IMediaData;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "GridItemEvents"

    const-string v4, "[setBottomText] bottomTextView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

    :goto_1
    invoke-virtual {v2, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected setBottomTextThumbnail(Lcom/htc/sunnyCore/Texture;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomTextLayer()Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    return-void
.end method

.method public setCorrupted(Z)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 0

    return-void
.end method

.method public setInked(Z)V
    .locals 0

    return-void
.end method

.method public setIs3D(Z)V
    .locals 0

    return-void
.end method

.method public setPlayable(Z)V
    .locals 0

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iput p1, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    :cond_0
    return-void
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mPrivateFlag:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :cond_0
    return-void
.end method

.method protected updateBottomViewContent(Landroid/view/View;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p2

    check-cast v2, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    if-nez v3, :cond_2

    const v3, 0x7f090039

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    if-nez v3, :cond_3

    const v3, 0x7f09003a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    if-nez v3, :cond_4

    const v3, 0x7f09003b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
