.class public Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
.super Ljava/lang/Object;
.source "SlideshowFusionSceneManager.java"


# instance fields
.field private final DEBUG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCurrentPosition:I

.field private mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

.field private mDecoderHandler:Landroid/os/Handler;

.field private mFxView:Lcom/htc/fusion/fx/FxView;

.field private mInitialized:Z

.field private mOrientation:I

.field private mOrientationPrevious:I

.field private mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

.field protected mTransitionAnimation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->DEBUG:Z

    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    return-void
.end method


# virtual methods
.method public create(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;I)Z
    .locals 3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    iput p3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionSceneManager][create]mTransitionAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]TRANSITION_PHOTO_LS"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setTransitionAnimationID(I)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]TRANSITION_FALLING_PHOTO"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][create]??"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    goto :goto_0
.end method

.method public deInit()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->deinit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mFxView:Lcom/htc/fusion/fx/FxView;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    return-void
.end method

.method public getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    return-object v0
.end method

.method public init(I)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x0

    const v6, 0xc350

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init] + "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_PHOTO_LS"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    iput-boolean v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_5

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    iput v1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    const/4 v3, 0x3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    iput v7, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_FALLING_PHOTO"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    iput v8, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    iput-boolean v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    iput v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    iput v7, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init] - "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_FADE"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-ne v3, v5, :cond_8

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_SLIDE"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mTransitionAnimation:I

    if-ne v3, v8, :cond_5

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionSceneManager][init]TRANSITION_ROTATE"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mInitialized:Z

    return v0
.end method

.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][onDecodeComplete] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionSceneManager][onDecodeComplete] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDecoder(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;II)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mDecoderHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setMediaListSize(I)V

    iput p3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mCurrentPosition:I

    return-void
.end method

.method public setIsPlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iput-boolean p1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->mIsPlaying:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientation:I

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mOrientationPrevious:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setPlaybackSpeed(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->mSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->setPlaybackSpeed(I)V

    return-void
.end method
