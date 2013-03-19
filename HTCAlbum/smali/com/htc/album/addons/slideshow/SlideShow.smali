.class public Lcom/htc/album/addons/slideshow/SlideShow;
.super Lcom/htc/album/addons/slideshow/SlideshowBase;
.source "SlideShow.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

.field private mControlBarFileIndicator:Landroid/widget/TextView;

.field private mControlBarFolder:Landroid/widget/TextView;

.field private mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mNextImageRunnable:Ljava/lang/Runnable;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mTitle:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;-><init>()V

    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTitle:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFolder:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFileIndicator:Landroid/widget/TextView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$1;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$2;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private ReleaseBitmap(Landroid/widget/ImageView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/album/addons/slideshow/SlideShow;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ReleaseBitmap find bmp existed"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    sget-boolean v1, Lcom/htc/album/addons/slideshow/SlideShow;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/htc/album/addons/slideshow/SlideShow;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getNextView get valid reference"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseBitmap(Landroid/widget/ImageView;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    return-void
.end method

.method private cancelPost()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    return-void
.end method

.method private initLayout()V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    if-nez v1, :cond_0

    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideShow][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTransAnimChange()Z
    .locals 5

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_transition_setting"

    sget v4, Lcom/htc/album/addons/slideshow/SlideShow;->TRANSITION_DEFAULT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    if-eq v2, v0, :cond_0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideShow][retrieveSettings]: Stop music by Change Transition."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadImage(ZZ)V
    .locals 6

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/htc/album/addons/slideshow/SlideShow;->seekNextPlayablePosition(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th image."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->updateTitlebar(I)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->retrieveSettings()V

    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideShow;->setTransitionAnim(ZZ)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updatePrevNextButtons()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    invoke-direct {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    goto :goto_0
.end method

.method private loadNextImage()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->loadImage(ZZ)V

    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->loadImage(ZZ)V

    return-void
.end method

.method private post(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    :cond_0
    return-void
.end method

.method private setTransitionAnim(ZZ)V
    .locals 6

    const-wide/16 v4, 0x320

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v2, p0, v3}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->isRandomized()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurDirection:Z

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMoveNext:Z

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurTransitionAnimIndex:I

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationInReversed()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOutReversed()Landroid/view/animation/Animation;

    move-result-object v1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_3
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurTransitionAnimIndex:I

    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurDirection:Z

    iput-boolean p2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMoveNext:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIn()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOut()Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1
.end method

.method private shouldRotate(II)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-le p1, p2, :cond_1

    if-ge v0, v1, :cond_2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ge p1, p2, :cond_2

    if-gt v0, v1, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 27

    if-nez p1, :cond_0

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]: image NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v19, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v18

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->shouldRotate(II)Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getWidth()I

    move-result v25

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->getHeight()I

    move-result v22

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    move/from16 v23, v25

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    move/from16 v24, v25

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    move/from16 v6, v23

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    move/from16 v7, v23

    :goto_6
    const/16 v9, 0x402

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    move-object/from16 v4, p1

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v8, 0x10

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder DRM load from input stream NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    sget v25, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_LAND:I

    goto :goto_1

    :cond_2
    sget v22, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_PORT:I

    goto :goto_2

    :cond_3
    move/from16 v23, v22

    goto :goto_3

    :cond_4
    move/from16 v24, v22

    goto :goto_4

    :cond_5
    move/from16 v6, v24

    goto :goto_5

    :cond_6
    move/from16 v7, v24

    goto :goto_6

    :cond_7
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder isDrm() but not DrmMedia NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_c

    const-string v3, "video/3gpp-3d"

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "video/mp4-3d"

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]: Shouldn\'t run to here, Slideshow not support Video !!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFittingOrientation:I

    if-nez v3, :cond_e

    if-eqz v21, :cond_e

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    if-nez v3, :cond_d

    const/16 v3, 0x5a

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v20

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseNextViewOnSwitcher()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v16, 0x10

    move v14, v6

    move v15, v7

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]image decoder load from file path NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideShow][LoadImageToSwitcher]: Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v3, -0x5a

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v20

    goto :goto_7

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseNextViewOnSwitcher()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public checkInit()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideShow][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    if-nez v1, :cond_2

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideShow][checkInit]: mAnimiationManager NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 5

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_transition_setting"

    sget v4, Lcom/htc/album/addons/slideshow/SlideShow;->TRANSITION_DEFAULT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x3

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public launchSlideshowByType(IZ)V
    .locals 8

    const/4 v7, 0x0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideShow][launchSlideshowByType]: Fusion Slideshow -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    const-string v2, "slideshow_setting_mode"

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemfullpath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "itemIndex"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "viewSingleImage"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "folder_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_folder_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_bucket_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "photoIds"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v2, "isInsideSlideshow"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "collection_info"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "collection_info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW3D"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOWFUSION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onBackPressed()V

    return-void
.end method

.method protected onControlbarNext()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    return-void
.end method

.method protected onControlbarPrevious()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-lez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadPreviousImage()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v11, 0x1

    invoke-static {p0, v11}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "onCreate"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    :cond_0
    new-instance v11, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "slideshow_setting_mode"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v11, p0, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkLaunchOtherSlideshow()I

    move-result v4

    const/4 v11, -0x3

    if-eq v11, v4, :cond_2

    const/4 v11, 0x0

    invoke-virtual {p0, v4, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSlideshowByType(IZ)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "isInsideSlideshow"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_ask_music_setting"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_music_enable_setting"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-nez v3, :cond_3

    iget-boolean v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-nez v11, :cond_b

    if-eqz v0, :cond_b

    const v11, 0x36870

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->showDialog(I)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    :cond_3
    :goto_1
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideShow][onCreate]: Run 2D Slideshow !"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "key_bucket_id"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "viewSingleImage"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "folder_type"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    if-nez v11, :cond_4

    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideShow][onCreate]: null folder detected... "

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    :cond_4
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    if-nez v11, :cond_5

    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    :cond_5
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v12, "album_mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "key_folder_name"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    :cond_6
    :goto_2
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v11, p0, v12}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v11, :cond_7

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "photoIds"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_10

    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideShow][onCreate]: from photo ids: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_7
    :goto_3
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-gtz v11, :cond_12

    :cond_8
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v12, "dock_mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowSettingManager][onCreate]: no pref folder, set folder to all photo"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    const v11, 0x7f0a0060

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_folder_picker_setting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v11, v12}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_9
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-gtz v11, :cond_12

    :cond_a
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowSettingManager][onCreate]: empty list"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->showErrorDialog()V

    goto/16 :goto_0

    :cond_b
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_ask_music_setting"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_c
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v12, "dock_mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_folder_picker_setting"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    :cond_d
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    :cond_e
    :goto_4
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    :cond_f
    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    const-string v11, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    const v11, 0x7f0a0060

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v12, "slide_show_folder_picker_setting"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-static {v2, v11, v12, v13, v14}, Lcom/htc/album/helper/CollectionMaker;->makeSlideshowCollection(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :goto_5
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideShow][onCreate]: from bucket id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v11, v12}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_5

    :cond_12
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "itemIndex"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "slideshow_back_index"

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideShow][onCreate]: Slideshow Get Index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Get Ent Pos: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-eqz v11, :cond_13

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "itemfullpath"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v11, v8, v12}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v11

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    :cond_13
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideShow][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-ltz v11, :cond_14

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    :cond_14
    sget-object v11, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowSettingManager][onCreate]: Slideshow reset mCurrentPosition: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->retrieveSettings()V

    const v11, 0x7f030040

    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/SlideShow;->setContentView(I)V

    iget-object v11, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v11, :cond_15

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->initControlBarManager()V

    :cond_15
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->initLayout()V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestFooterBar()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->attachMediaController()V

    :cond_16
    new-instance v11, Landroid/media/MediaPlayer;

    invoke-direct {v11}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v11, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const/4 v11, 0x1

    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->enableBroadcastReceiver()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onDestory"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->destoryMusic()V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseBitmap(Landroid/widget/ImageView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->removeAllViews()V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onDestroy()V

    return-void
.end method

.method public onFfwdTarget()V
    .locals 0

    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuPress()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onPause()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->destroyDrawingCache()V

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPauseTarget()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->pauseMusic()V

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    return-void
.end method

.method public onPlayTarget()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->playMusic()V

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mTransitionAnimIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getTransitionKeyValue4Profile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    return v3
.end method

.method public onPlaybackMode()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onResume()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->isTransAnimChange()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onPlayTarget()Z

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideShow][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 14

    const/4 v13, 0x0

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStart()V

    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "onStart"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->enableBroadcastReceiver()V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_orientation_setting"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v13}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkLaunchOtherSlideshow()I

    move-result v1

    const/4 v10, -0x3

    if-eq v10, v1, :cond_4

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-ltz v10, :cond_2

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_2

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-interface {v10, v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "slideshow_back_index"

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemIndex"

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemfullpath"

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SlideShow][onStart]: Set CurPos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Set EntPos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v10, 0x1

    invoke-virtual {p0, v1, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSlideshowByType(IZ)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v11, "dock_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    const-string v11, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const v10, 0x7f0a005f

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    :goto_3
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v10, v11}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    if-gtz v10, :cond_b

    :cond_9
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideShow][onStart]: mImageList is Null or Zero !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->showErrorDialog()V

    goto/16 :goto_0

    :cond_a
    iput-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->updateTitlebar(I)V

    goto/16 :goto_0

    :cond_c
    sget-object v10, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideShow][onStart]: Get Folder from preference NG !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_orientation_setting"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    :goto_0
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStop()V

    return-void

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0

    return-void
.end method
