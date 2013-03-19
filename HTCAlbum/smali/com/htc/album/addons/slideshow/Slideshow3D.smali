.class public Lcom/htc/album/addons/slideshow/Slideshow3D;
.super Lcom/htc/album/addons/slideshow/SlideshowBase;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> S3D: "

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

.field private mBundleUsedWhenOnCreate:Landroid/os/Bundle;

.field private mNextImageRunnable:Ljava/lang/Runnable;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

.field private mSlideshowViewInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;-><init>()V

    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$1;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$2;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

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

    sget-boolean v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ReleaseBitmap find bmp existed"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    return-void
.end method

.method private cancelPost()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    return-void
.end method

.method private initLayout()V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

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

    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadImage(ZZ)V
    .locals 5

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-interface {v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->seekNextPlayablePosition(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "th image."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setTransitionAnim(ZZ)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    const/4 v1, 0x0

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

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    return-void

    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    goto :goto_0
.end method

.method private post(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    :cond_0
    return-void
.end method

.method public static searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: init para NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-lt p0, v5, :cond_3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    add-int/lit8 p0, v5, -0x1

    :cond_3
    move v1, p0

    :goto_1
    if-ltz v1, :cond_4

    :try_start_0
    invoke-interface {p2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: searching NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: no found indicate index, set index 0 !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0
.end method

.method private setTransitionAnim(ZZ)V
    .locals 0

    return-void
.end method

.method private shouldRotate(II)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindowManager()Landroid/view/WindowManager;

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

.method private updateTitlebar(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iput p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mNoUpdateControlBar:Z

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->invalidateOptionsMenu()V

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][updateTitlebar]: mControlBarMgr is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][updateTitlebar] mActionBar is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0

    return-void
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
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-nez v1, :cond_2

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mSlideShowView NG 0 !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 5

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_transition_setting"

    sget v4, Lcom/htc/album/addons/slideshow/Slideshow3D;->TRANSITION_DEFAULT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x3

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deinitControlBarManager()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    :cond_0
    return-void
.end method

.method public launchSlideshowByType(IZ)V
    .locals 8

    const/4 v7, 0x0

    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][Slideshow3D][launchSlideshowByType]: Fusion Slideshow -> "

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
    :pswitch_0
    const-string v2, "slideshow_setting_mode"

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemfullpath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "itemIndex"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "viewSingleImage"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "folder_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_folder_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_bucket_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

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

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "collection_info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOWFUSION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
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

.method protected onControlbarNext()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doNextImage()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    return-void
.end method

.method protected onControlbarPrevious()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPreviousImage()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onCreate(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    const/4 v10, 0x1

    invoke-static {p0, v10}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "onCreate"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    :cond_0
    new-instance v10, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "slideshow_setting_mode"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v10, p0, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkLaunchOtherSlideshow()I

    move-result v4

    const/4 v10, -0x3

    if-eq v10, v4, :cond_2

    const/4 v10, 0x0

    invoke-virtual {p0, v4, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshowByType(IZ)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "isInsideSlideshow"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_ask_music_setting"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_music_enable_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-nez v3, :cond_3

    iget-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-nez v10, :cond_b

    if-eqz v0, :cond_b

    const v10, 0x36870

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showDialog(I)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    :cond_3
    :goto_1
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][Slideshow3D][onCreate]: Run 3D Slideshow !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "folder_type"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    if-nez v10, :cond_4

    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "mFolderType = null, change folder type to com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_bucket_id"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    if-nez v10, :cond_5

    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    :cond_5
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v11, "album_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "key_folder_name"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10, p0, v11}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "photoIds"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_10

    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SlideShow3D][onCreate]: from photo ids: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_7
    :goto_3
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    if-gtz v10, :cond_12

    :cond_8
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v11, "dock_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideshowSettingManager][onCreate]: Preference Folder is not exist, Set folder to Default folder !! (Dock Mode)"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    const v10, 0x7f0a0060

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v10, v11}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_9
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    if-gtz v10, :cond_12

    :cond_a
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][SlideshowSettingManager][onCreate]: mImageList is Null or Zero !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_ask_music_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_c
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v11, "dock_mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    :cond_d
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    :cond_e
    :goto_4
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    :cond_f
    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    const v10, 0x7f0a0060

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v11, "slide_show_folder_picker_setting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    invoke-static {v2, v10, v11, v12, v13}, Lcom/htc/album/helper/CollectionMaker;->makeSlideshowCollection(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :goto_5
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SlideShow3D][onCreate]: from bucket id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v10, v11}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_5

    :cond_12
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    const v10, 0x7f030040

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemIndex"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "slideshow_back_index"

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][Slideshow3D][onCreate]: Slideshow Get Index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Get Ent Pos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-eqz v10, :cond_13

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "itemfullpath"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v10, v8, v11}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v10

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    :cond_13
    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][Slideshow3D][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_14

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-gez v10, :cond_15

    :cond_14
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    :cond_15
    new-instance v10, Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-direct {v10, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/slideshow/SlideshowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/slideshow/SlideshowView;->setPlayIndex(I)V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    new-instance v11, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;

    invoke-direct {v11}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;-><init>()V

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideAnimatorsFactory(Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;)V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v10, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->setEventListener(Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V

    iget-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v10, p1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    iget-boolean v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v10, :cond_19

    sget-object v10, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "onCreate() NG - SlideshowView create"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v10, Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v11, v10}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)Z

    :cond_16
    const v10, 0x7f090042

    invoke-virtual {p0, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v10, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v10, :cond_17

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initControlBarManager()V

    :cond_17
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initLayout()V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->attachMediaController()V

    :cond_18
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const/4 v10, 0x1

    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    goto/16 :goto_0

    :cond_19
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    goto :goto_6
.end method

.method public onCurIndexChange(II)V
    .locals 2

    if-nez p2, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowSettingManager][onCurIndexChange]: no image !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->destoryMusic()V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->destroy()V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

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

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

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
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onPause()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    :cond_3
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPauseTarget()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPauseTarget]: onPauseTarget()"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

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
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPause()Z

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->pauseMusic()V

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    return-void
.end method

.method public onPlayTarget()Z
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPlayTarget]: onPlayTarget()"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowViewInitialized:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate() NG - SlideshowView create"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBundleUsedWhenOnCreate:Landroid/os/Bundle;

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPlay()Z

    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->playMusic()V

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

.method public onRepeatPause(I)V
    .locals 2

    move v0, p1

    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$3;

    invoke-direct {v1, p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D$3;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;I)V

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onResume()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

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

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPlayTarget()Z

    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStart()V

    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onStart"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkLaunchOtherSlideshow()I

    move-result v1

    const/4 v8, -0x3

    if-eq v8, v1, :cond_3

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-ltz v8, :cond_2

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_2

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-interface {v8, v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Slideshow3D][onStart]: Set CurPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Set EntPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshowByType(IZ)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_folder_picker_setting"

    invoke-virtual {v8, v9, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const v8, 0x7f0a005f

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_8
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_9
    sget-object v8, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowSettingManager][onStart]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    :cond_a
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    goto :goto_2

    :cond_b
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v8, Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v9, v8}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)Z

    iget-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-nez v8, :cond_c

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    :cond_c
    invoke-direct {p0, v10, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    goto/16 :goto_0
.end method

.method public onStatusChange(I)V
    .locals 2

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onStatusChange]:"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStop()V

    return-void
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0

    return-void
.end method
