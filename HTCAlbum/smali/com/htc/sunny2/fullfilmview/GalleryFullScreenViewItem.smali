.class public Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
.super Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;
.source "GalleryFullScreenViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final IMAGE_LAYER:I = 0x0

.field protected static final INK_LAYER:I = 0x1

.field public static LTAG:Ljava/lang/String; = null

.field protected static final SPRITE_LAYER_COUNT:I = 0xd

.field protected static final SPRITE_LAYER_DRM:I = 0x6

.field protected static final SPRITE_LAYER_DRM_CORRUPT:I = 0x2

.field protected static final SPRITE_LAYER_DRM_TEXT_PRESSED:I = 0x7

.field protected static final SPRITE_LAYER_DRM_TEXT_UNPRESSED:I = 0x8

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x0

.field protected static final SPRITE_LAYER_IS_3D:I = 0xa

.field protected static final SPRITE_LAYER_LOADING:I = 0x9

#the value of this static final field might be set in the static constructor
.field protected static final SPRITE_LAYER_LONGPRESS_INDICATOR_X_OFFSET:I = 0x0

.field protected static final SPRITE_LAYER_LONGPRESS_INDICATOR_Y_OFFSET:I = 0x0

.field protected static final SPRITE_LAYER_LONGPRESS_TO_LEFT:I = 0xb

.field protected static final SPRITE_LAYER_LONGPRESS_TO_RIGHT:I = 0xc

.field protected static final SPRITE_LAYER_PLAYABLE:I = 0x3

.field protected static final SPRITE_LAYER_PLAYABLE_SMALL:I = 0x4

.field protected static final SPRITE_LAYER_TEXT:I = 0x5

.field protected static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private dataIndex:I

.field private imageSprite:Lcom/htc/sunnyCore/Sprite;

.field private indicatorSprite:Lcom/htc/sunnyCore/Sprite;

.field private mConsumeRightFlag:Z

.field private mCurrentTexture:Lcom/htc/sunnyCore/Texture;

.field private mFrameHeight:F

.field private mFrameWidth:F

.field public mIsAniamtion:Z

.field mIsDrm:Z

.field mIsForwardLock:Z

.field mIsPlayable:Z

.field private mIsReady:Z

.field private mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

.field private mText:Ljava/lang/String;

.field private mTextTexture:Lcom/htc/sunnyCore/Texture;

.field private mTextView:Landroid/widget/TextView;

.field paintTexture:Lcom/htc/sunnyCore/Texture;

.field private rotateDegrees:I

.field private sContext:Lcom/htc/sunnyCore/SunnyContext;

.field shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

.field private sourceImageHeight:I

.field private sourceImageWidth:I

.field private zoomable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_LONGPRESS_INDICATOR_X_OFFSET:I

    sput v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->SPRITE_LAYER_LONGPRESS_INDICATOR_X_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunnyCore/SunnyContext;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunnyCore/SunnyContext;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunnyCore/SunnyContext;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunnyCore/SunnyContext;

    return-void
.end method

.method private setDisplayFileName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setLoading(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setLoading NG - indicatorSprite is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    return-void
.end method

.method private setPlayable(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setPlayable NG - indicatorSprite is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method private setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    const-string v1, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setPlayable(Z)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setCorrupted(Z)V

    :goto_1
    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][GalleryFullScreenView][setupIndicator]mediaData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateImageSizeByDefaultOrTextureInfo()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v0, v0, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getSourceWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getSourceHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->setDisplayImageDimension(II)V

    :cond_2
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateImageSizeByDefaultOrTextureInfo] w/h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateImageSizeByDrm()V
    .locals 24

    sget v21, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move/from16 v0, v21

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v3, v3

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    div-float v22, v20, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    int-to-float v3, v3

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    div-float v23, v20, v3

    const/high16 v3, 0x3f00

    sub-float v4, v3, v22

    const/high16 v3, 0x3f00

    sub-float v9, v3, v23

    const/high16 v3, 0x3f00

    add-float v6, v3, v22

    const/high16 v3, 0x3f00

    add-float v5, v3, v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    sparse-switch v3, :sswitch_data_0

    const/4 v11, 0x0

    move v10, v2

    move v12, v4

    move v13, v9

    move v14, v6

    move v15, v5

    invoke-static/range {v10 .. v15}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    :cond_1
    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return-void

    :sswitch_0
    const/4 v3, 0x0

    move v7, v5

    move v8, v4

    move v10, v6

    move v11, v9

    invoke-static/range {v2 .. v11}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_1
    const/4 v11, 0x0

    move v10, v2

    move v12, v6

    move v13, v5

    move v14, v6

    move v15, v9

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v9

    invoke-static/range {v10 .. v19}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_2
    const/4 v11, 0x0

    move v10, v2

    move v12, v6

    move v13, v9

    move v14, v4

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-static/range {v10 .. v19}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public allocateShareResources()V
    .locals 14

    const/high16 v13, 0x4000

    const/4 v12, -0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    if-nez v7, :cond_1

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - null context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - already allocated"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {v7, p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;-><init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V

    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x2080054

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture playable create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x208008b

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture playable create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x7f02002b

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture Drm create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x7f02001e

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture DrmCorrupt create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x7f020023

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_7

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture videoCorrupt create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_7
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x20800f0

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture corrupt create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_8
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x20800f4

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture loading create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_9
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x7f020001

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToLeft:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToLeft:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_a

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture textureLongPressToLeft create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_a
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x7f020002

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToRight:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToRight:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_b

    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture textureLongPressToRight create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    :cond_b
    new-instance v6, Lcom/htc/widget/HtcRimButton;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcRimButton;->setGravity(I)V

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcRimButton;->setLines(I)V

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2040209

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonOuter(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonPressed(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonRest(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v2, v3, v5}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcRimButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v8, 0x2030023

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcRimButton;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    invoke-static {v7, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    invoke-static {v7, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v1, v0}, Lcom/htc/widget/HtcRimButton;->measure(II)V

    invoke-virtual {v6}, Lcom/htc/widget/HtcRimButton;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/htc/widget/HtcRimButton;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v6, v10, v10, v7, v8}, Lcom/htc/widget/HtcRimButton;->layout(IIII)V

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcRimButton;->setFocusable(Z)V

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcRimButton;->setColorOn(Z)V

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-static {v6}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcRimButton;->setColorOn(Z)V

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-static {v6}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_0

    :cond_c
    sget-object v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "allocateShareResources() NG - texture loading create failed , call freeShareResources()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    goto/16 :goto_0
.end method

.method public attachToSceneNode(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 39

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v17

    if-nez v17, :cond_0

    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "create imageSprite NG"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    :goto_0
    return-void

    :cond_0
    const/16 v17, 0xd

    invoke-static/range {v17 .. v17}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v17

    if-nez v17, :cond_1

    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "create indicatorSprite NG"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "create indicatorSprite NG - release imageSprite"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Sprite;->release()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/high16 v22, 0x3f80

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v17

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v17

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v22, v0

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v22, v0

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v9, v0

    sget v17, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v17, 0x4000

    div-float v17, v33, v17

    const/high16 v22, 0x4000

    div-float v22, v8, v22

    sub-float v17, v17, v22

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    sget v22, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v31, v17, v22

    const/high16 v17, 0x4000

    div-float v17, v33, v17

    const/high16 v22, 0x4000

    div-float v22, v9, v22

    sub-float v17, v17, v22

    sget v22, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v32, v17, v22

    move/from16 v0, v31

    neg-float v10, v0

    move/from16 v0, v32

    neg-float v11, v0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v22, v0

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v17

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v11, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    invoke-virtual/range {v38 .. v38}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v12, v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v34

    const/16 v17, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    sget v17, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v22, 0x4000

    div-float v17, v17, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07001f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    add-float v17, v17, v22

    sget v22, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v18, v17, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/16 v17, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v15, v23

    invoke-virtual/range {v29 .. v29}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v16, v24

    move/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    :goto_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v23, v18

    invoke-virtual/range {v19 .. v24}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    const/16 v17, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v15, v23

    invoke-virtual/range {v30 .. v30}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v16, v24

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    :goto_9
    const/16 v17, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToLeft:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v36 .. v36}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v20 .. v25}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_a
    const/16 v17, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    const/16 v22, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToRight:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v26}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/16 v17, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_b
    const/16 v17, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    :cond_2
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - playableLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - playableLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - drmLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - corruptLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - drmCorruptLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_7
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - videoCorruptLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_8
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - loadingLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_9
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - drmTextLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_a
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - drmTextLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_b
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - loadingLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_c
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v22, "attachToSceneNode NG - loadingLayer_shareResources is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b
.end method

.method public bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v4

    if-eqz v4, :cond_7

    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDefaultOrTextureInfo()V

    const/4 v2, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    const/4 v1, 0x1

    if-eqz v2, :cond_0

    const-string v4, "image/jps"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    if-gez v4, :cond_1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    add-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    :cond_1
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDrm()V

    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v4, v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    :cond_2
    :goto_3
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_4

    if-nez v3, :cond_5

    :cond_4
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    :cond_6
    :goto_4
    return-void

    :catch_0
    move-exception v0

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    :cond_7
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, ""

    goto/16 :goto_1

    :cond_8
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_2

    :cond_9
    if-ne v3, v6, :cond_2

    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_3

    :cond_a
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_4
.end method

.method public bridge synthetic bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 0

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

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

    new-instance v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V

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

.method public detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    :cond_1
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    :cond_2
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    :cond_3
    return-void
.end method

.method public freeShareResources()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToLeft:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToLeft:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToRight:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToRight:Lcom/htc/sunnyCore/Texture;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method public getImageRotateDegrees()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    return v0
.end method

.method public getSourceImageHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method public getSourceImageWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    return v0
.end method

.method public onDRMPressed(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_1

    sget-object v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v2, "onPressed NG - indicatorSprite is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public onFrameSizeUpdate(FF)V
    .locals 11

    const/high16 v4, 0x4000

    const/4 v6, 0x0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    const/4 v6, 0x1

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v0

    int-to-float v2, v0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v9, v0

    div-float v0, v9, v4

    div-float v3, v1, v4

    sub-float/2addr v0, v3

    neg-float v0, v0

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v3, v3

    add-float v7, v0, v3

    div-float v0, v9, v4

    div-float v3, v2, v4

    sub-float/2addr v0, v3

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v3, v3

    add-float v8, v0, v3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    neg-float v3, v7

    neg-float v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_2

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDisplayFileName(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_3
    return-void
.end method

.method public onImageGeometryUpdate(FFFF)V
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x4000

    const/high16 v4, 0x3f00

    add-float v3, p1, v4

    float-to-int v3, v3

    int-to-float p1, v3

    add-float v3, p2, v4

    float-to-int v3, v3

    int-to-float p2, v3

    float-to-int v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v10, :cond_0

    add-float/2addr p3, v4

    :cond_0
    float-to-int v3, p2

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v10, :cond_1

    add-float/2addr p4, v4

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, p3, p4, v5}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, p1, p2, v4}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->getScale()[F

    move-result-object v8

    const/4 v3, 0x0

    aget v3, v8, v3

    div-float/2addr v3, v9

    div-float v4, v1, v9

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    aget v3, v8, v10

    div-float/2addr v3, v9

    div-float v4, v2, v9

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    neg-float v3, v6

    neg-float v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    :cond_3
    return-void
.end method

.method public onImageGeometryUpdateWithUVAdjust(FFFFF)V
    .locals 15

    const/high16 v2, 0x3f00

    add-float v2, v2, p2

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 p2, v0

    const/high16 v2, 0x3f00

    add-float v2, v2, p3

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 p3, v0

    move/from16 v0, p2

    float-to-int v2, v0

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x3f00

    add-float p4, p4, v2

    :cond_0
    move/from16 v0, p3

    float-to-int v2, v0

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/high16 v2, 0x3f00

    add-float p5, p5, v2

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v3, 0x3f80

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    div-float v13, p2, p3

    cmpl-float v2, p1, v13

    if-ltz v2, :cond_3

    div-float v14, v13, p1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v14

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    const/high16 v2, 0x3f80

    sub-float v6, v2, v4

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    const/4 v5, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite;->setTextureCoordinatesWithRotate(IFFFF)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    div-float v14, p1, v13

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v14

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    const/high16 v2, 0x3f80

    sub-float v12, v2, v10

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    const/4 v9, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunnyCore/Sprite;->setTextureCoordinatesWithRotate(IFFFF)V

    goto :goto_0
.end method

.method public onImageTextureExpired()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    :cond_0
    return-void
.end method

.method public onImageTextureReady(Lcom/htc/sunnyCore/Texture;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v6, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lt v4, v3, :cond_1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-ge v4, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v4, v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v1

    if-nez v1, :cond_7

    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][GalleryFullScreenView][onImageTextureReady]setLoading true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    :cond_5
    :goto_1
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    return-void

    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    goto :goto_0

    :cond_7
    if-ne v1, v7, :cond_5

    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][GalleryFullScreenView][onImageTextureReady]setLoading false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_1
.end method

.method public onSetImageAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onSetImageVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    rem-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    if-gez v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    add-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDefaultOrTextureInfo()V

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    const/4 v1, 0x1

    if-eqz v2, :cond_1

    const-string v3, "image/jps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDrm()V

    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v3, v3, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v3, :cond_4

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {p2}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    :cond_4
    return-void

    :catch_0
    move-exception v0

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto :goto_0

    :cond_5
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, ""

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_2
.end method

.method public resetConsumeRightFlag()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    :cond_0
    return-void
.end method

.method public setConsumeRightFlag()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    return-void
.end method

.method public setCorrupted(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 13

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_0

    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setDrm NG - indicatorSprite is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setDrm NG - mediaData is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v11, :cond_8

    :cond_2
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_c

    if-nez v11, :cond_3

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getContentType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v8, v3

    const/high16 v3, 0x4000

    div-float v3, v8, v3

    const/high16 v4, 0x4000

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    const/high16 v3, 0x4000

    div-float v3, v8, v3

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    neg-float v3, v6

    neg-float v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_2
    const/4 v10, 0x0

    instance-of v3, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v10

    :cond_5
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    if-eq v3, v12, :cond_6

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDisplayFileName(Ljava/lang/String;)V

    :cond_6
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_a

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_7

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_7

    const/4 v9, 0x0

    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    if-eqz v10, :cond_b

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_9
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "attachToSceneNode NG - drmLayer_shareResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0
.end method

.method public setIndicatorSpriteVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    return-void
.end method

.method public setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP - itemPaintLayerInfo.bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - paintTexture.getHandler() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    iget v2, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    iget v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v7, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;->onPaintLayerSetEnd()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - itemPaintLayerInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setItemPaintTransparency(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - transparency range incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    goto :goto_0
.end method

.method public setTextureUseMaxQualityAs(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_2

    if-lt p1, v7, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_1

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    :cond_1
    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_3

    if-lt p1, v6, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0
.end method

.method public showDRMIndicator(Z)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v5, 0x4000

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_2

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v3, v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v9

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    if-eqz v9, :cond_4

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_4

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->getScale()[F

    move-result-object v8

    aget v3, v8, v10

    div-float/2addr v3, v5

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    aget v3, v8, v11

    div-float/2addr v3, v5

    div-float v4, v2, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    neg-float v3, v6

    neg-float v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v10, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator NG - drmLayer_shareResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator - do nothing for state not success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    return-void
.end method

.method public updateFilmstripEnterIndicatorLeft(ZFF)V
    .locals 11

    const/16 v10, 0xb

    const/4 v5, 0x0

    const/high16 v9, 0x4000

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v7, :cond_0

    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v7, "setLoading NG - indicatorSprite is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v7, v10}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v6, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToLeft:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v7

    int-to-float v1, v7

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v7

    int-to-float v2, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    div-float/2addr v7, v9

    sub-float v7, p2, v7

    sget v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->SPRITE_LAYER_LONGPRESS_INDICATOR_X_OFFSET:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    neg-float v3, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    div-float/2addr v7, v9

    sub-float v7, p3, v7

    sub-float v4, v7, v5

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    neg-float v7, v7

    div-float/2addr v7, v9

    div-float v8, v2, v9

    add-float/2addr v7, v8

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    neg-float v7, v7

    div-float/2addr v7, v9

    div-float v8, v2, v9

    add-float v4, v7, v8

    :cond_1
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v5, v10}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    div-float/2addr v7, v9

    div-float v8, v2, v9

    sub-float/2addr v7, v8

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    div-float/2addr v7, v9

    div-float v8, v2, v9

    sub-float v4, v7, v8

    goto :goto_1
.end method

.method public updateFilmstripEnterIndicatorRight(ZFF)V
    .locals 11

    const/16 v10, 0xc

    const/4 v5, 0x0

    const/high16 v9, 0x4000

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v7, :cond_0

    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v7, "setLoading NG - indicatorSprite is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v7, v10}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v6, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLongPressToRight:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v7

    int-to-float v1, v7

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v7

    int-to-float v2, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    div-float/2addr v7, v9

    sub-float v7, p2, v7

    sget v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->SPRITE_LAYER_LONGPRESS_INDICATOR_X_OFFSET:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    neg-float v3, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    div-float/2addr v7, v9

    sub-float v7, p3, v7

    sub-float v4, v7, v5

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    neg-float v7, v7

    div-float/2addr v7, v9

    div-float v8, v2, v9

    add-float/2addr v7, v8

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    neg-float v7, v7

    div-float/2addr v7, v9

    div-float v8, v2, v9

    add-float v4, v7, v8

    :cond_1
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v5, v10}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    div-float/2addr v7, v9

    div-float v8, v2, v9

    sub-float/2addr v7, v8

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    div-float/2addr v7, v9

    div-float v8, v2, v9

    sub-float v4, v7, v8

    goto :goto_1
.end method
