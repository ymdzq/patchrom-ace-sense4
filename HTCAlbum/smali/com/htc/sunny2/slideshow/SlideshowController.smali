.class public Lcom/htc/sunny2/slideshow/SlideshowController;
.super Ljava/lang/Object;
.source "SlideshowController.java"

# interfaces
.implements Lcom/htc/sunnyCore/common/Timer$Listener;
.implements Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
.implements Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;
.implements Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> SControl "

.field private static DECODE_CHECK_MAX_COUNT:I

.field private static final LTAG:Ljava/lang/String;

.field private static SLIDESHOW_SPEED_FAST:I

.field private static SLIDESHOW_SPEED_MID:I

.field private static SLIDESHOW_SPEED_SLOW:I

.field public static STATUS_NEXT:I

.field public static STATUS_PAUSE:I

.field public static STATUS_PLAY:I

.field public static STATUS_PREVIOUS:I

.field public static STATUS_STOP:I

.field private static TIMER_ID_DELAY_SLIDE:I

.field private static TIMER_ID_NEXT_SLIDE:I


# instance fields
.field private currentItemIndex:I

.field private imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

.field private inited:Z

.field private mBrokenImageSkipPlay:Z

.field private mContext:Landroid/content/Context;

.field private mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

.field private mCurAnimatorRunningTime:J

.field private mCurrentAnimationIndex:I

.field private mCurrentPhotoHeight:I

.field private mCurrentPhotoWidth:I

.field private mCurrentProcessIndex:I

.field private mDecodeCheckCount:I

.field private mDefaultDalayTime:I

.field private mFaceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/addons/slideshow/KenBums$Face;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

.field private mIsFaceInforRdy:Z

.field private mIsFullDecodeRdy:Z

.field private mPauseInNext:Z

.field private mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

.field private mPreviousPlayTime:J

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

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

.field private mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

.field private mStatus:I

.field private mStopInThisSlide:Z

.field mTimeEnd:J

.field mTimeStartDecode:J

.field mTimeStartFace:J

.field private mediaList:Lcom/htc/sunnyCore/IMediaList;

.field private renderThread:Lcom/htc/sunnyCore/RenderThread;

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private resultTexture:I

.field private slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

.field private slideDuration:I

.field private slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

.field private transitionDuration:I

.field private viewportHeight:I

.field private viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-class v0, Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    sput v1, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_NEXT_SLIDE:I

    sput v2, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_DELAY_SLIDE:I

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_STOP:I

    sput v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PLAY:I

    sput v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    const/4 v0, 0x3

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    const/4 v0, 0x4

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    const/16 v0, 0x1f40

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_SLOW:I

    const/16 v0, 0x1770

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_MID:I

    const/16 v0, 0xfa0

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_FAST:I

    const/16 v0, 0x14

    sput v0, Lcom/htc/sunny2/slideshow/SlideshowController;->DECODE_CHECK_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->inited:Z

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDefaultDalayTime:I

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_STOP:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    iput-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    iput-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPauseInNext:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunnyCore/IMediaList;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/slideshow/SlideshowController;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    return v0
.end method

.method private resetPlayImageInfo(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->runNotifyUpdateCurIndex()V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "NextSlideTimer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "DelaySlideTimer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public buildShuffleList()V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method public deinit()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->endThread()V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    :cond_1
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iput v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iput-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    iput v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    iput v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    iput-boolean v5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->inited:Z

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "deinit()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SlideshowControl][deinit] mFaceDetectThread Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doFaceDetect(ILandroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "KA>>> SControl mFaceDetectThread is null !!"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][doFaceDetect]: Start FaceDetect!! Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Photo W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartFace:J

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->addTask(ILandroid/graphics/Bitmap;)Z

    return-void
.end method

.method public doNextImage()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "KA>>> SControl [HTCAlbum][SlideshowControl][doNextImage]: skip action. Previous action not done."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl [SlideshowControl]: doNextImage()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne v1, v2, :cond_2

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    :cond_2
    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestSkipBitampDecode()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->immediatePlay(I)Z

    goto :goto_0
.end method

.method public doPause()Z
    .locals 6

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowControl]: doPause() mCurAnimator is Null !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [SlideshowControl]: doPause()"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->pauseAnimator()V

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getAnimatorStatus()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getAnimatorStatus()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->pauseAnimator()V

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v3, "NextSlideTimer"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v3, "DelaySlideTimer"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    iget-wide v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v3, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/lit16 v4, v4, 0x7d0

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    :cond_2
    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public doPlay()Z
    .locals 5

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowControl]: doPlay() mCurAnimator is Null !"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl [SlideshowControl]: doPlay()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->setupDelaySlideTimer(I)V

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->resumeAnimator()V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getAnimatorStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getAnimatorStatus()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->resumeAnimator()V

    :cond_2
    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PLAY:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public doPreviousImage()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v3, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v3, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    if-ne v2, v3, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][doPreviousImage]: skip action. Previous action not done."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [SlideshowControl]: doPreviousImage()"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayPrevImage()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][doPreviousImage]:NG !"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne v0, v2, :cond_3

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    :cond_3
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestSkipBitampDecode()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->immediatePlay(I)Z

    move v0, v1

    goto :goto_0
.end method

.method public doStop()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowControl]: doStop() renderThread is Null !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "KA>>> SControl [SlideshowControl]: doStop()"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_STOP:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][setSlideshowControl][getCurrentIndex]: index out of range, return index 0."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_shuffle_setting"

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mShuffleList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    goto :goto_0
.end method

.method public immediatePlay(I)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "immediatePlay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "immediatePlay NG - null renderThread"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> SControl immediatePlay() - Skip this action, Index:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not in Total index !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Lcom/htc/sunnyCore/RenderThread;Lcom/htc/sunnyCore/IMediaList;ILcom/htc/sunny2/slideshow/ImagePreparator;Lcom/htc/sunny2/slideshow/SlideshowScene;Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;II)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "init()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-lez p7, :cond_0

    if-gtz p8, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "init() NG - null parameters"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput-object p2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iput p3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    iput-object p4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    iput-object p5, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iput-object p6, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    iput p7, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    iput p8, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->buildShuffleList()V

    new-instance v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    const-string v2, "FaceDetectionThread"

    invoke-direct {v1, v2, p0}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;-><init>(Ljava/lang/String;Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;)V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceDetectThread:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->beginThread()V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayImage(I)Z

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestSkipBitampDecode()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->immediatePlay(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->inited:Z

    goto :goto_0
.end method

.method public isImageInRange(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "KA>>> SControl  [SlideshowController][isImageInRange]: index is not in Avariable Range !"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public isImagePlayable(I)Z
    .locals 4

    move v2, p1

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->inited:Z

    return v0
.end method

.method public onAnimatorStatusChange(Lcom/htc/sunny2/slideshow/SlideAnimator;I)V
    .locals 2

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "KA>>> SControl [SlideshowControl][onAnimatorStatusChange]: doPause()"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doPause()Z

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->runNotifyUpdateCurStatus(I)V

    return-void
.end method

.method public onBitmapDecodeFailed(I)V
    .locals 3

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][onBitmapDecodeFailed]: Bitmap Decode Fail index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    return-void
.end method

.method public onBitmapDecodeReady(I)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBitmapDecodeReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->takeOutResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [onBitmapDecodeReady]: Get Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][Time]: onBitmapDecodeReady Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartDecode:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Photo ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartDecode:J

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "onBitmapDecodeReady NG - resultBitmap is null !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doFaceDetect(ILandroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onFaceDetected(ILandroid/graphics/Bitmap;I[Landroid/media/FaceDetector$Face;)V
    .locals 15

    if-nez p2, :cond_0

    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v10, "bmpPhoto is null !!"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl [HTCAlbum][SlideshowControl][Time]: onFaceDetected Time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartFace:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Detect Face: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Photo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " x "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl Index: ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : FaceDetec infor is Ready !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl FaceDetec  Size - W: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , H: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl Photo Full Size - W: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , H: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    aget-object v3, p4, v4

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v3, v8}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v1, v9, v10

    iget v9, v8, Landroid/graphics/PointF;->x:F

    mul-float v6, v9, v1

    iget v9, v8, Landroid/graphics/PointF;->y:F

    mul-float v7, v9, v1

    invoke-virtual {v3}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v9

    mul-float v5, v9, v1

    new-instance v2, Lcom/htc/album/addons/slideshow/KenBums$Face;

    invoke-direct {v2, v6, v7, v5}, Lcom/htc/album/addons/slideshow/KenBums$Face;-><init>(FFF)V

    iget-object v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    move/from16 v0, p1

    if-ne v9, v0, :cond_2

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> SControl ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: onFaceDetected !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_2
    sget-object v9, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v10, "KA>>> SControl  !!!!! mCurrentProcessIndex != nIndex !!!!!"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTextureDecodeFailed(I)V
    .locals 3

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][onTextureDecodeFailed]: Texture DecodeFailed Fail index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    return-void
.end method

.method public onTextureDecodeReady(I)V
    .locals 6

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [HTCAlbum][SlideshowControl][Time]: onTextureDecodeReady Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartDecode:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextureDecodeRead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getResultTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [onTextureDecodeReady]: Get Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    if-ne v0, p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: onTextureDecodeReady !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [onTextureDecodeReady]: skip thid rdy ! CurIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] != Ready index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTimerCancelledIRT(ILcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onTimerIRT(I)V
    .locals 2

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_NEXT_SLIDE:I

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "TIMER_NEXT_SLIDE"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_DELAY_SLIDE:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->playSlide(I)Z

    goto :goto_0
.end method

.method public playSlide(I)Z
    .locals 13

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: Play Photo - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] begin."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: skip this action, Request Index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] != CurIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    if-nez v0, :cond_15

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    if-gtz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: skip Index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] because W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", H: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->setupDelaySlideTimer()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v11

    const/16 v0, 0x5a

    if-eq v11, v0, :cond_3

    const/16 v0, 0x10e

    if-ne v11, v0, :cond_4

    :cond_3
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: switch Width and Height Index["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] getMediaDegreesRotated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v12, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    iput v12, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v10

    const-string v0, "image/jps"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    :cond_5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KenMums_face_array"

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "kenBums_photo_width"

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "kenBums_photo_height"

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;->createSlideAnimator(IIIILandroid/os/Bundle;)Lcom/htc/sunny2/slideshow/SlideAnimator;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v1, "slide_show_duration_setting"

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_FAST:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_10

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_FAST:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    :goto_1
    invoke-virtual {v6, p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->setListener(Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;)V

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x3e8

    const/16 v1, 0x1f4

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    invoke-virtual {v6, v0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->setDurations(III)V

    :goto_2
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPauseInNext:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->setLatest(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPauseInNext:Z

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;->onRepeatPause(I)V

    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideshowScene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/slideshow/SlideshowScene;->animateSlide(Lcom/htc/sunny2/slideshow/SlideAnimator;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "playSlide NG - animateSlide"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PREVIOUS:I

    if-ne v0, v1, :cond_c

    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->endAnimator()V

    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->endAnimator()V

    :cond_b
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PLAY:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    :goto_3
    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    iput-object v6, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimator:Lcom/htc/sunny2/slideshow/SlideAnimator;

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl  [playSlide]: Index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Start Play !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v1, "slide_show_repeat_setting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPauseInNext:Z

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    if-eqz v0, :cond_e

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_NEXT:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mStopInThisSlide:Z

    :cond_e
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mPreviousPlayTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurAnimatorRunningTime:J

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->runNotifyUpdateCurIndex()V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "NextSlideTimer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "DelaySlideTimer"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayNextImage()Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_10
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_11

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_MID:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    goto/16 :goto_1

    :cond_11
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_12

    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_SLOW:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    goto/16 :goto_1

    :cond_12
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->SLIDESHOW_SPEED_MID:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    goto/16 :goto_1

    :cond_13
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    invoke-virtual {v6, v0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator;->setDurations(III)V

    goto/16 :goto_2

    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_15
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    invoke-direct {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->resetPlayImageInfo(I)V

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Decode Fail Skip this Photo !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_16
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [playSlide]: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Not Rdy, Skip !! FaceRdy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FullDecodeRdy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->DECODE_CHECK_MAX_COUNT:I

    if-ge v0, v1, :cond_17

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDecodeCheckCount:I

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->setupDelaySlideTimer()V

    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mBrokenImageSkipPlay:Z

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[playSlide]: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] decode over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/slideshow/SlideshowController;->DECODE_CHECK_MAX_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, skip this photo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->resetPlayImageInfo(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayNextImage()Z

    goto :goto_5
.end method

.method public requestImage(I)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> SControl  [SlideshowController][requestImage]: start request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], Shuffle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_shuffle_setting"

    invoke-virtual {v3, v4, v0}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "requestImage() NG - null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_3

    :cond_2
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImage() NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    if-nez v1, :cond_5

    :cond_4
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> SControl  [SlideshowController][requestImage]: request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] but latest request look like not done. End previous request."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->resultTexture:I

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v1, p0, p1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestImage(Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;I)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImage() NG - requestImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mTimeStartDecode:J

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestPlayImage(I)Z
    .locals 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestImage(I)Z

    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentProcessIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mFaceArray:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFaceInforRdy:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mIsFullDecodeRdy:Z

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getFullPhotoHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> SControl [requestPlayPrevImage]: Get Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentPhotoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->setupNextSlideTimer()V

    const/4 v0, 0x1

    return v0
.end method

.method public requestPlayNextImage()Z
    .locals 4

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [requestPlayNextImage]:"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->buildShuffleList()V

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl  [SlideshowController][requestPlayNextImage]: Play from Slide 0, Repeat !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImagePlayable(I)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [requestPlayNextImage]: Play from Slide 0, Repeat !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [requestPlayNextImage]: All list can\'t play !!!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayImage(I)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestPlayPrevImage()Z
    .locals 4

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl [requestPlayPrevImage]:"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->buildShuffleList()V

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl  [SlideshowController][requestPlayPrevImage]: Play from Slide 0, Repeat !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImagePlayable(I)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isImageInRange(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl  [SlideshowController][requestPlayPrevImage]: Play from Slide 0, Repeat !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v3, "KA>>> SControl  [SlideshowController][requestPlayNextImage]: All list can\'t play !!!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->currentItemIndex:I

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/slideshow/SlideshowController;->requestPlayImage(I)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public runNotifyUpdateCurIndex()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][setSlideshowControl][runNotifyUpdateCurIndex]: mContext or mSlideshowContrilLis NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowController$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowController$1;-><init>(Lcom/htc/sunny2/slideshow/SlideshowController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public runNotifyUpdateCurStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][setSlideshowControl][runNotifyUpdateCurStatus]: mContext or mSlideshowContrilLis NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowController$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/slideshow/SlideshowController$2;-><init>(Lcom/htc/sunny2/slideshow/SlideshowController;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSlideshowControlEventListener(Landroid/content/Context;Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][setSlideshowControlEventListener]: setSlideshowControlEventListener NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][setSlideshowSetingManager]: setSlideshowSetingManager NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewPort(II)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportWidth:I

    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->viewportHeight:I

    return-void
.end method

.method public setupDelaySlideTimer()V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "setupDelaySlideTimer NG - null renderThread"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "NextSlideTimer"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "DelaySlideTimer"

    invoke-static {p0, v1}, Lcom/htc/sunnyCore/common/Timer;->Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/common/Timer;

    move-result-object v0

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_DELAY_SLIDE:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->mDefaultDalayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/common/Timer;->setupByTimeMillis(Lcom/htc/sunnyCore/common/Timer$Listener;IJ)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0
.end method

.method public setupDelaySlideTimer(I)V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "setupDelaySlideTimer NG - null renderThread"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "NextSlideTimer"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const-string v1, "DelaySlideTimer"

    invoke-static {p0, v1}, Lcom/htc/sunnyCore/common/Timer;->Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/common/Timer;

    move-result-object v0

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_DELAY_SLIDE:I

    int-to-long v2, p1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/common/Timer;->setupByTimeMillis(Lcom/htc/sunnyCore/common/Timer$Listener;IJ)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0
.end method

.method public setupNextSlideTimer()V
    .locals 5

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    const-string v2, "setupNextSlideTimer NG - null renderThread"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/htc/sunny2/slideshow/SlideshowController;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> SControl setupNextSlideTimer() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowController;->getCurrentIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Request Timer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NextSlideTimer"

    invoke-static {p0, v1}, Lcom/htc/sunnyCore/common/Timer;->Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/common/Timer;

    move-result-object v0

    sget v1, Lcom/htc/sunny2/slideshow/SlideshowController;->TIMER_ID_NEXT_SLIDE:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->slideDuration:I

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->transitionDuration:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/common/Timer;->setupByTimeMillis(Lcom/htc/sunnyCore/common/Timer$Listener;IJ)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0
.end method
