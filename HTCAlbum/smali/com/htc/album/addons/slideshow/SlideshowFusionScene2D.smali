.class public Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;
.super Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
.source "SlideshowFusionScene2D.java"


# static fields
.field static final ANIMATION_ARRAY:[Ljava/lang/String;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mBitmapCurrent:Landroid/graphics/Bitmap;

.field protected mBitmapNew:Landroid/graphics/Bitmap;

.field protected mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected final mDynamicImageCurrentPrefix:Ljava/lang/String;

.field protected mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected final mDynamicImageNewPrefix:Ljava/lang/String;

.field protected mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected final mDynamicImageStayPrefix:Ljava/lang/String;

.field protected final mFxTimelineContrlPrefix:Ljava/lang/String;

.field protected mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Fade1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Counterclockwise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Fade2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SlideUp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SlideFadeLeft"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Rotate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->ANIMATION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;-><init>()V

    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v0, "transition"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineContrlPrefix:Ljava/lang/String;

    const-string v0, "dynamicImageCurrent"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrentPrefix:Ljava/lang/String;

    const-string v0, "dynamicImageNew"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNewPrefix:Ljava/lang/String;

    const-string v0, "dynamicImageStay"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStayPrefix:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getTransitionAnimationID()I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mTransitionAnimation:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionScene2D][onGoNext]getTransitionAnimationID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->deinit()V

    return-void
.end method

.method public getScenePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/htc/album/addons/slideshow/CustomizedSettings;->getScenePath(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "transition"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "dynamicImageCurrent"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "dynamicImageNew"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "dynamicImageStay"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/16 v2, 0xc8

    const/16 v1, 0xc8

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v1

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionScene2D][onDecodeComplete] + , index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-eqz p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onDecodeComplete] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    if-ltz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onDecodeComplete] + , decodeMode = fg"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    iget-boolean v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isLastItemInQueue:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->onGoNext()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "showStay"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    :cond_6
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    :cond_7
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    iget-boolean v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isLastItemInQueue:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->onGoPrevious()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "showStay"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onGoNext()V
    .locals 5

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onGoNext] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->ANIMATION_ARRAY:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->getTransitionAnimationID()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "showTransition"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onGoNext] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGoPause()V
    .locals 0

    return-void
.end method

.method public onGoPlay()V
    .locals 0

    return-void
.end method

.method public onGoPrevious()V
    .locals 5

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onGoPrevious] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->ANIMATION_ARRAY:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->getTransitionAnimationID()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "showTransition"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][onGoPrevious] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionScene2D][setOrientation] + "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v0, v2, 0x2

    div-int/lit8 v1, v3, 0x2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionScene2D][setOrientation]h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mFxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    new-instance v5, Lcom/htc/fusion/Point3F;

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setPosition(Lcom/htc/fusion/Point3F;)V

    :cond_0
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-instance v5, Lcom/htc/fusion/Point3F;

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setPosition(Lcom/htc/fusion/Point3F;)V

    :cond_1
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-instance v5, Lcom/htc/fusion/Point3F;

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setPosition(Lcom/htc/fusion/Point3F;)V

    :cond_2
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-instance v5, Lcom/htc/fusion/Point3F;

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setPosition(Lcom/htc/fusion/Point3F;)V

    :cond_3
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionScene2D][setOrientation] - "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
