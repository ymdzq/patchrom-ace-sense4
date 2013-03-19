.class public Lcom/htc/album/addons/slideshow/SlideshowFusion;
.super Lcom/htc/album/addons/slideshow/SlideshowBase;
.source "SlideshowFusion.java"


# static fields
.field static final DELAY_TIME:I = 0xbb8

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_NEXT_TIME:I

.field private initialQuick:Z

.field private lastCancelledTime:J

.field private lastPostedInterval:J

.field private lastPostedTime:J

.field mAnimationInt:I

.field mCurrentID:I

.field private mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

.field private mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

.field private mFxView:Lcom/htc/fusion/fx/FxView;

.field private mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

.field private mOrientation:I

.field private mPausedByNoRepeat:Z

.field mRandom:Ljava/util/Random;

.field mRunnableNext:Ljava/lang/Runnable;

.field mRunnablePrev:Ljava/lang/Runnable;

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private timeLeftToNextPost:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;-><init>()V

    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentID:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRandom:Ljava/util/Random;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEFAULT_NEXT_TIME:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    iput-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    iput-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    iput-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mAnimationInt:I

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadNextImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadPreviousImage()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideshowFusion;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/slideshow/SlideshowFusion;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    return v0
.end method

.method private addFxView()V
    .locals 5

    const/4 v4, -0x1

    new-instance v2, Lcom/htc/fusion/fx/FxView;

    invoke-direct {v2, p0}, Lcom/htc/fusion/fx/FxView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const v2, 0x7f090042

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][addFxView]can\'t find mainview"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelPost()V
    .locals 2

    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][cancelPost] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPosted:Z

    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][cancelPost] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private loadImage(ZZ)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x1

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][loadImage] + "

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][loadImage]mStopAndLeave - "

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v1

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage]currIdx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_1

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][loadImage]image == null - "

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->seekNextPlayablePosition(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v1

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SlideshowFusion][loadImage]load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "th image."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updatePrevNextButtons()V

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;-><init>()V

    iput v1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    const/4 v5, 0x4

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    iput v8, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getOrientation()I

    move-result v5

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    iput-boolean p2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    iput v8, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v5, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    const v5, 0xc350

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusion][loadImage] - "

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    iput v9, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    goto :goto_1

    :cond_5
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v5, v8, :cond_6

    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-ne v5, v9, :cond_2

    :cond_6
    const/4 v5, 0x2

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFittingOrientation:I

    iput v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    goto :goto_1
.end method

.method private loadNextImage()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadNextImage] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadImage(ZZ)V

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadNextImage] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadPreviousImage] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadImage(ZZ)V

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][loadPreviousImage] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    goto :goto_0
.end method

.method private post(JZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    return-void
.end method

.method private post(JZZ)V
    .locals 2

    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][post] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    iput-wide p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnableNext:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPosted:Z

    :cond_1
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][post] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRunnablePrev:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public checkInit()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][checkInit]: mImageList NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLaunchOtherSlideshow()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doAddFooterButtons(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 11

    const v4, 0x20800b6

    const/16 v3, 0x24

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    :goto_0
    return-void

    :cond_1
    const/16 v8, 0x27

    const v9, 0x20800c0

    move-object v5, p2

    move-object v6, p1

    move v7, v2

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    const/16 v3, 0xf

    const v4, 0x20800b4

    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto :goto_0
.end method

.method protected doAddMediaControllerButtons(Lcom/htc/album/addons/slideshow/SlideShowController;)V
    .locals 11

    const v4, 0x20800b6

    const/16 v3, 0x24

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    :goto_0
    return-void

    :cond_1
    const/16 v8, 0x27

    const v9, 0x20800c0

    move-object v5, p1

    move-object v6, p0

    move v7, v2

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    const/16 v3, 0xf

    const v4, 0x20800b4

    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    goto :goto_0
.end method

.method public launchSlideshowByType(IZ)V
    .locals 8

    const/4 v7, 0x0

    sget-boolean v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusion][launchSlideshowByType]Fusion Slideshow -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v2, "slideshow_setting_mode"

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemfullpath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "itemIndex"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "viewSingleImage"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "folder_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_folder_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_bucket_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "photoIds"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string v2, "isInsideSlideshow"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "collection_info"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "collection_info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW3D"

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
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onConfigurationChanged] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onConfigurationChanged] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onControlbarNext()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    return-void
.end method

.method protected onControlbarPrevious()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZZ)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate] + "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    :cond_1
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    new-instance v9, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "slideshow_setting_mode"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    invoke-virtual {v9, p0, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate]initSlideshowSetting NG"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkLaunchOtherSlideshow()I

    move-result v4

    const/4 v9, -0x3

    if-eq v9, v4, :cond_4

    const/4 v9, 0x0

    invoke-virtual {p0, v4, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->launchSlideshowByType(IZ)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "isInsideSlideshow"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_ask_music_setting"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_music_enable_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    if-nez v3, :cond_5

    iget-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnableMusic:Z

    if-nez v9, :cond_10

    if-eqz v0, :cond_10

    const v9, 0x36870

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showDialog(I)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    :cond_5
    :goto_1
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate]Slideshow Fusion"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "key_bucket_id"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "folder_type"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    if-nez v9, :cond_8

    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_7

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate]null folder detected"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v9, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    :cond_8
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    if-nez v9, :cond_9

    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    :cond_9
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v10, "album_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "key_folder_name"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    :cond_a
    :goto_2
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_b
    :goto_3
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-gtz v9, :cond_19

    :cond_c
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v10, "dock_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_d

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate]no pref folder, set folder to all photo"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    const v9, 0x7f0a0060

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_folder_picker_setting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_e
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-gtz v9, :cond_19

    :cond_f
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowSettingManager][onCreate]: empty list"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showErrorDialog()V

    goto/16 :goto_0

    :cond_10
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_ask_music_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_11
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v10, "dock_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_folder_picker_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    :cond_12
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    :cond_13
    :goto_4
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    goto :goto_4

    :cond_14
    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    const v9, 0x7f0a0060

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "slide_show_folder_picker_setting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_15
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "photoIds"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_17

    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_16

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]from photo ids: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-static {p0, v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto/16 :goto_3

    :cond_17
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    invoke-static {v2, v9, v10, v11, v12}, Lcom/htc/album/helper/CollectionMaker;->makeSlideshowCollection(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    if-eqz v1, :cond_18

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :goto_5
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]from bucket id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_5

    :cond_19
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "itemIndex"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "slideshow_back_index"

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_1a

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]: Slideshow Get Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Get Ent Pos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-eqz v9, :cond_1b

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "itemfullpath"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v9, v7, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v9

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    :cond_1b
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_1c

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_1d

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]: Slideshow reset mCurrentPosition: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    const v9, 0x7f030044

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setContentView(I)V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->addFxView()V

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v9, :cond_1e

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initControlBarManager()V

    :cond_1e
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestFooterBar()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->attachMediaController()V

    :cond_1f
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const/4 v9, 0x1

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mMusicState:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->enableBroadcastReceiver()V

    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_20

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][SlideshowFusion][onCreate]mTransitionAnimIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    sget-boolean v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][SlideshowFusion][onCreate] - "

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onDestroy] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->destoryMusic()V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    :cond_2
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onDestroy()V

    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onDestroy] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][onPause] + "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onPause()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPause()V

    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v1, v4}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxView;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxView;->dispose()V

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->release()V

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    :cond_5
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->deInit()V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->destroy()V

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    :cond_6
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsSettingShown:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBackupIsPlayingFlag:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsSettingShown:Z

    :cond_7
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][onPause] - "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPauseTarget()V
    .locals 9

    const/4 v8, 0x0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onPauseTarget] + "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    iget-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedInterval:J

    iget-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastCancelledTime:J

    iget-wide v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->lastPostedTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusion][onPauseTarget]timeLeftToNextPost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->pauseMusic()V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onGoPause()V

    :cond_1
    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->cancelPost()V

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onPauseTarget] - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayTarget()Z
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->init(I)V

    :goto_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget]!mIsPlaying, could be back from paused state?"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v5, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget]not photo lock screen and not falling photo"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    :cond_0
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->onGoPlay()V

    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z

    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->playMusic()V

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getTransitionKeyValue4Profile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onPlayTarget] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurTransitionAnimIndex:I

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusion][onPlayTarget]timeLeftToNextPost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->timeLeftToNextPost:J

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume] + "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onResume()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume]isFinishing - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->addFxView()V

    :cond_1
    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mStopAndLeave:Z

    new-instance v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-direct {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;-><init>()V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getTrasitionAnimationID()I

    move-result v1

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    iput-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFxView:Lcom/htc/fusion/fx/FxView;

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mTransitionAnimIndex:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->create(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;I)Z

    new-instance v2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    const-string v3, "decoder"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    new-instance v3, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setDecodeCompleteCallback(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->start()V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->initHandler()V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mDecoder:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setDecoder(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;II)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_duration_setting"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingsInterval:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setPlaybackSpeed(I)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setIsPlaying(Z)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->getCurrentScene(I)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentSceneBase:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mScene:Lcom/htc/fusion/fx/FxScene;

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mIsPlaying:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->init(I)V

    :goto_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v2, v6}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->retrieveSettings()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onPlayTarget()Z

    :goto_2
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusion][onResume] - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v2, v6}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPause(Z)V

    :cond_6
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    goto :goto_2
.end method

.method protected onStart()V
    .locals 11

    sget-boolean v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart] + "

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStart()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkInit()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->enableBroadcastReceiver()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->checkLaunchOtherSlideshow()I

    move-result v1

    const/4 v8, -0x3

    if-eq v8, v1, :cond_4

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-ltz v8, :cond_3

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_3

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-interface {v8, v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "slideshow_back_index"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemIndex"

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "itemfullpath"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SlideshowFusion][onStart]: Set CurPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Set EntPos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mEnterPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->launchSlideshowByType(IZ)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->finish()V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurMode:Ljava/lang/String;

    const-string v9, "dock_mode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v9, "slide_show_folder_picker_setting"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_8

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

    :cond_8
    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    const-string v9, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const v8, 0x7f0a005f

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    :goto_2
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBucketId:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_9
    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart]: mImageList is Null or Zero !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showErrorDialog()V

    goto/16 :goto_0

    :cond_a
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurFolderName:Ljava/lang/String;

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->buildShuffleList()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V

    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V

    sget-boolean v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart] - "

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][SlideshowFusion][onStart]: Get Folder from preference NG !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onStop()V
    .locals 2

    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onStop] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->initialQuick:Z

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onStop()V

    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][onStop] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected updatePrevNextButtons()V
    .locals 3

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][updatePrevNextButtons] + "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionLS()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->isLaunchSlideshowFusionFP()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    if-gtz v1, :cond_2

    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mRepeat:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_3

    :cond_3
    :goto_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusion][updatePrevNextButtons] - "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
