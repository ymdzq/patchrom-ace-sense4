.class public Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;
.super Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;
.source "SlideshowFusionScenePhotoLockScreen.java"


# static fields
.field public static final BACKGROUND_DYNAMIC_IMAGE_COUNT:I = 0x1b

.field public static final FOREGROUND_DYNAMIC_IMAGE_COUNT:I = 0x8


# instance fields
.field private final BUILD_NUM:I

.field private final DEBUG:Z

.field private final LOCK:Ljava/lang/Object;

.field private final LOG_TAG:Ljava/lang/String;

.field protected final PLAYSTATE_FORWARD:I

.field protected final PLAYSTATE_REWIND:I

.field protected final PLAYSTATE_STOPPED:I

.field private final WAIT_PRELOAD:I

.field protected final backgroundDynamicImagePrefix:Ljava/lang/String;

.field protected final backgroundPhotoTimeLineControlPrefix:Ljava/lang/String;

.field protected final backgroundTimeLineControlCompPrefix:Ljava/lang/String;

.field protected final backgroundTimelinePrefix:Ljava/lang/String;

.field protected final foregroundDynamicImagePrefix:Ljava/lang/String;

.field protected final foregroundTimelinePrefix:Ljava/lang/String;

.field protected final hitBoxPrefix:Ljava/lang/String;

.field protected mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mBackgroundPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mBackgroundTimeLineControlPausedFrame:F

.field protected mBuildComplete:Z

.field protected mCurrentUsingForegroundFrameIndex:I

.field protected mCurrentUsingShuffleListIndex:I

.field protected mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mForegroundPlaybackCompleteListeners:[Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mForegroundTimeLineControlPausedFrame:[F

.field protected mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field protected mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsBackgroundDynamicImagesSet:[Z

.field protected mIsForegroundTimelineControlBeingPlayed:[I

.field protected mLaunched:Z

.field protected mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final quickEndModifier:F

.field protected transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected final transizeTimelinePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x1b

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;-><init>()V

    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->quickEndModifier:F

    const-string v0, "Slideshow_transize"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimelinePrefix:Ljava/lang/String;

    const-string v0, "timeline.lock_photo_"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->foregroundTimelinePrefix:Ljava/lang/String;

    const-string v0, "timeline.behindphoto_loop"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->backgroundTimelinePrefix:Ljava/lang/String;

    const-string v0, "dynamicimage.main_photo.major"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->foregroundDynamicImagePrefix:Ljava/lang/String;

    const-string v0, "dynamicimage.behind_flying.photo"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->backgroundDynamicImagePrefix:Ljava/lang/String;

    const-string v0, "comp.behind_flying.frame"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->backgroundTimeLineControlCompPrefix:Ljava/lang/String;

    const-string v0, "timeline_bg_photo"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->backgroundPhotoTimeLineControlPrefix:Ljava/lang/String;

    const-string v0, "photo.hitbox"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->hitBoxPrefix:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    new-array v0, v1, [Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    new-array v0, v1, [Lcom/htc/fusion/fx/MessageListener;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundPlaybackCompleteListeners:[Lcom/htc/fusion/fx/MessageListener;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    new-array v0, v4, [Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    new-array v0, v1, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-array v0, v4, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlPausedFrame:F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mLaunched:Z

    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBuildComplete:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->WAIT_PRELOAD:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->BUILD_NUM:I

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->PLAYSTATE_STOPPED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->PLAYSTATE_FORWARD:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->PLAYSTATE_REWIND:I

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$2;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public buildShuffleList()V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    return-void
.end method

.method public deinit()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][deinit] + "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-super {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->deinit()V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][deinit] - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getScenePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0, v0}, Lcom/htc/album/addons/slideshow/CustomizedSettings;->getScenePath(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V
    .locals 9

    const/16 v8, 0x1b

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneBase;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][init] + "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Slideshow_transize"

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "timeline.behindphoto_loop"

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_3

    new-array v3, v8, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "comp.behind_flying.frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicimage.behind_flying.photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPlaybackCompleteListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeline.lock_photo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicimage.main_photo.major"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    aput v5, v3, v0

    move v1, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundPlaybackCompleteListeners:[Lcom/htc/fusion/fx/MessageListener;

    new-instance v4, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;

    invoke-direct {v4, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;I)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundPlaybackCompleteListeners:[Lcom/htc/fusion/fx/MessageListener;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "timeline_bg_photo"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "photo.hitbox"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBoxMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mHitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setStrokeInterest(I)V

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_7

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->buildShuffleList()V

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][init] - "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete] + , index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    :cond_1
    const/4 p2, 0x0

    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete] - "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :pswitch_0
    if-ltz p1, :cond_3

    const/16 v2, 0x1a

    if-gt p1, v2, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete] + , decodeMode = bg"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge p1, v2, :cond_5

    rsub-int/lit8 v1, p1, 0x17

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]setBehindObjPhoto1 - idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Lcom/htc/fusion/fx/FxImage;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    aput-boolean v6, v2, v1

    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    :cond_5
    move v1, p1

    :goto_1
    const/16 v2, 0x17

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]setBehindObjPhoto2 - idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_6

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Lcom/htc/fusion/fx/FxImage;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    aput-boolean v5, v2, v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    :cond_6
    :goto_2
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mMediaListSize:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]setBehindObjPhoto3 - Image set idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-ge p1, v7, :cond_a

    rsub-int/lit8 v2, p1, 0x4

    rsub-int/lit8 v1, v2, 0x1b

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]setBehindObjPhoto4 - idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    if-eqz v2, :cond_9

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Lcom/htc/fusion/fx/FxImage;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsBackgroundDynamicImagesSet:[Z

    aput-boolean v5, v2, v1

    :cond_9
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlComp:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    :cond_a
    if-ne v7, p1, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay]WAIT_PRELOAD complete"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBuildComplete:Z

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Build"

    const/high16 v4, 0x3f80

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto/16 :goto_0

    :pswitch_1
    if-ltz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]decodeMode = fg"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mShuffleList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onDecodeComplete]mCurrentUsingShuffleListIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentUsingForegroundFrameIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_b

    iget-object v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/fusion/fx/FxImageManager;->createImage(Landroid/graphics/Bitmap;)Lcom/htc/fusion/fx/FxImage;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Lcom/htc/fusion/fx/FxImage;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    iget-boolean v2, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isMoveNext:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoNext()V

    :cond_b
    :goto_3
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingShuffleListIndex:I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->buildShuffleList()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoPrevious()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onGoNext()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoNext] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aput v4, v0, v1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v0, v0, v1

    const-string v1, "fly_in"

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoNext] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoNextByUser()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->quickEnd()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoNext()V

    return-void
.end method

.method public onGoPause()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPause] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V

    invoke-static {v0}, Lcom/htc/fusion/fx/FxRunAsync;->Execute(Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;)Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPause] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoPlay()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mLaunched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mLaunched:Z

    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V

    invoke-static {v0}, Lcom/htc/fusion/fx/FxRunAsync;->Execute(Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;)Ljava/util/concurrent/Future;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoPrevious()V
    .locals 5

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPrevious] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    const/4 v2, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v0, v0, v1

    const-string v1, "fly_in"

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPrevious] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGoPreviousByUser()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->quickEnd()V

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoPrevious()V

    return-void
.end method

.method public quickEnd()V
    .locals 14

    const/16 v13, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v0, v0, v12

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v1

    aput v1, v0, v12

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPause]mForegroundTimelineControls["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_5

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mCurrentUsingForegroundFrameIndex:I

    if-eq v0, v12, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    aget v0, v0, v12

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_3
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    aget v1, v1, v12

    float-to-int v1, v1

    const/high16 v4, -0x3f60

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    :cond_3
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v6, v0, v12

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    aget v0, v0, v12

    float-to-int v7, v0

    const/16 v8, 0xc8

    const/high16 v10, 0x40a0

    move v9, v2

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    :cond_4
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][setOrientation] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][setOrientation]Landscape"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "background_L"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][setOrientation] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][setOrientation]Portrait"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundPhotoTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "background_P"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->transizeTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0
.end method
