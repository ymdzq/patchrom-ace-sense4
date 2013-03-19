.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    }
.end annotation


# static fields
.field protected static final ADDITIONAL_TEXTURE_BUFFER:I = 0x1

.field public static final BUNDLE_CACHE_SET:Ljava/lang/String; = "CACHE_SET"

.field public static final BUNDLE_ENABLE_QUALITY_OPTIONS:Ljava/lang/String; = "BUNDLE_ENABLE_QUALITY_OPTIONS"

.field public static final BUNDLE_ENABLE_SPECIAL_CACHE:Ljava/lang/String; = "ENABLE_SPECIAL_CACHE"

.field public static final BUNDLE_ENABLE_VIEW_DECODE:Ljava/lang/String; = "BUNDLE_ENABLE_VIEW_DECODE"

.field public static final BUNDLE_FLAG:Ljava/lang/String; = "BUNDLE_FLAG"

.field public static final BUNDLE_GRID_FILE_CACHE_SIZE:Ljava/lang/String; = "GRID_FILE_CACHE_SIZE"

.field public static final BUNDLE_GRID_MEM_CACHE_SIZE:Ljava/lang/String; = "GRID_MEM_CACHE_SIZE"

.field public static final BUNDLE_GRID_WIDTH_HEIGHT:Ljava/lang/String; = "GRID_WIDTH_HEIGHT"

.field public static final BUNDLE_IS_MULTIPLE_FOLDER_IMAGES:Ljava/lang/String; = "MULTIPLE_FOLDER_IMAGES"

.field public static final BUNDLE_SUB_INDEX:Ljava/lang/String; = "SUB_INDEX"

.field public static final BUNDLE_TEXTURE_FROM_VIEW:Ljava/lang/String; = "TEXTURE_FROM_VIEW"

.field public static final BUNDLE_TEXTURE_MAX_COUNT:Ljava/lang/String; = "TEXTURE_MAX_COUNT"

.field protected static final CANCEL_TASK:I = -0x1

.field protected static final DEBUG:Z = false

.field protected static final DEFAULT_MEM_CACHE_SIZE:I = 0xc8

.field protected static final FAIL_TEXTURE_ID:Ljava/lang/String; = "TextureForFail"

.field public static final FLAG_CHECK_VIEW_UPDATE:I = 0x2

.field public static final HQ:I = 0x1

.field protected static final HTC_DEBUG:Z = true

.field protected static final ITEMS_PER_PAGE:I = 0x18

.field protected static final ITERATOR_STEP_MILLIS:I = 0x2

.field public static final LQ:I = 0x0

.field protected static final MAX_TASK_COUNT:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final MAX_TEXTURES_LIMIT_COUNT:I = 0x0

.field protected static final MEDIA_DECODE_THREAD_BUFFER_RANGE:I = 0x6


# instance fields
.field protected final LOCK:Ljava/lang/Object;

.field private final LOCK_PAUSE:Ljava/lang/Object;

.field protected TAG:Ljava/lang/String;

.field protected mBeginIndex:I

.field protected mBorderColor:I

.field protected mBorderWidth:I

.field protected mBottomIndex:I

.field protected mCacheItemTool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mCachePuller:Lcom/htc/sunny2/common/CachePuller;

.field protected mCacheSet:I

.field protected mColumnCount:I

.field protected mContext:Landroid/content/Context;

.field protected mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

.field protected mDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/ItrCacheDecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mDecoderCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;

.field protected mDirection:I

.field protected mEnableAntiAlias:Z

.field protected mEnableBorder:Z

.field protected mEnableQualityOptions:Z

.field protected mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/ItrCacheEncodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mEndIndex:I

.field protected mFailTexture:Lcom/htc/sunnyCore/Texture;

.field protected mFailTextureUsedCount:I

.field private mFileCacheSize:I

.field protected mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

.field protected mGridWidthHeight:I

.field protected mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

.field protected mIsCacheEnabled:Z

.field protected mIsInitial:Z

.field protected mIsMediaListExist:Z

.field protected mIsMutipleFolderImages:Z

.field private mIsPaused:Z

.field protected mIsViewBackgroundDecode:Z

.field protected mItemCounts:I

.field protected mItemParams:Lcom/htc/sunnyCore/IParamsPreparator;

.field protected mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mIterationDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/IterationDecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field protected mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/IterationTaskGallery;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected mMediaList:Lcom/htc/sunnyCore/IMediaList;

.field protected mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/MediaDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMemCacheSize:I

.field protected mOffLineBottom:I

.field protected mOffLineTop:I

.field protected mOldLoadingStatus:I

.field protected mOverlapImageSize:I

.field protected mQualityList:[I

.field protected mSpecificCacheFlag:I

.field protected mStop:Z

.field protected mSunnyEnvironment:I

.field private mTaskWaitingTime:J

.field protected mTextureBufferRange:I

.field protected mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

.field protected mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mTextureMaxCount:I

.field protected mTextureMaxCount_backup:I

.field protected mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

.field protected mTexturesCount:I

.field protected mTopIndex:I

.field protected mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

.field protected mViewDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/ViewDecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

.field protected mViewDecodeThreadCallback:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;

.field protected mViewFailTextureUsedCount:I

.field protected mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/IterationTaskGallery;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

.field protected mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

.field protected mViewTexturesCount:I

.field protected previousUpDirection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    :goto_0
    sput v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GridViewPreparator"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    const/16 v0, 0xb2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThreadCallback:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    new-instance v0, Lcom/htc/sunny2/common/CachePuller;

    invoke-direct {v0}, Lcom/htc/sunny2/common/CachePuller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemParams:Lcom/htc/sunnyCore/IParamsPreparator;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItemTool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecoderCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    return-void
.end method

.method private checkViewUpdate(II)V
    .locals 11

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v7, :cond_0

    monitor-exit v8

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "checkViewUpdate() NG - null texture map or null media list"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, p2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v7, p2, :cond_4

    monitor-exit v8

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v7, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v5, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v7}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[checkViewUpdate] null media data or prototype, index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", preparator item count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", media list count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_0

    :cond_6
    invoke-interface {v5, v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, p2}, Lcom/htc/sunnyCore/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v7, p2, :cond_7

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    :cond_7
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, p2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private isTextureNullOrDirty(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isProcessed(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSkipAndFailTextureToCurrent(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;Z)V
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "[setSkipAndFailTextureToCurrent] DecodeItem is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_FLAG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget v2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v1, v3, v2, v0}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget v2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    const-string v4, "TextureForFail"

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto :goto_0
.end method

.method private textureMapRelease(Lcom/htc/sunnyCore/common/TextureMap;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/common/TextureMap;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureRelease(Lcom/htc/sunnyCore/Texture;Ljava/util/List;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private textureRelease(Lcom/htc/sunnyCore/Texture;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/Texture;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[textureRelease] mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0
.end method

.method private textureReuseForNewViewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/IMediaList;)V
    .locals 9

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :goto_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v0, v7, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(ILcom/htc/sunnyCore/IMediaList;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v3

    invoke-interface {p3, v0}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    if-eqz v3, :cond_2

    if-nez v1, :cond_4

    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v8, "[textureReuseForNewViewTextureMap] Prototype or MediaData is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v3, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/htc/sunnyCore/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v7, :cond_3

    invoke-virtual {p2, v0, v5, v6}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private viewTextureMapRelease(Lcom/htc/sunnyCore/common/TextureMap;Z)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->viewTextureRelease(Lcom/htc/sunnyCore/Texture;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private viewTextureRelease(Lcom/htc/sunnyCore/Texture;Z)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    goto :goto_0
.end method


# virtual methods
.method public bind(ILcom/htc/sunnyCore/IMediaList;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Not initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->unbind(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    if-lez v0, :cond_2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    :cond_2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList has no media"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "bind() NG - not null texture pool or map"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    :cond_7
    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    :cond_8
    new-instance v0, Lcom/htc/sunnyCore/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mTextureForDirtyUpdate != 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_d

    const/16 v0, 0x17

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    :goto_1
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v0, :cond_a

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    :cond_a
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_b

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    :cond_c
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind-, scroll speed 0, item count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    goto :goto_1
.end method

.method protected cancelTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "[cancelTask] NG - mTexturePool is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-nez v1, :cond_2

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "[cancelTask] NG - mTexturePool is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_1
.end method

.method public checkImageUpdate(II)V
    .locals 9

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    if-nez v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate() NG - null texture map or null media list or null decodeItem"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v6, p2, :cond_1

    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v6, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate() NG = null media item, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preparator item count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", media list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunnyCore/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate - item index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newIdentifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldIdentifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    const-string v6, "TextureForFail"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v7, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v6, p2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureId(II)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    goto/16 :goto_0
.end method

.method public deInit()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailPreparator_deInit - Textures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected decodeFromCacheOrOriginalFile(J)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decodeFromCacheOrOriginalFile] MediaItem is null, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", media list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v10

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/sunnyCore/IMediaData;

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decodeFromCacheOrOriginalFile] MediaItem is null, subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decodeFromCacheOrOriginalFile] MeidaDataList is null, subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decodeFromCacheOrOriginalFile] MediaItem index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v3

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheItem(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)Lcom/htc/sunny2/common/CacheItem;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v11, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v1, v11, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iput v1, v11, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    iput v1, v11, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v1, v11, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    new-instance v16, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct/range {v16 .. v16}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    iget v1, v11, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setTaskIndex(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v1, :cond_4

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected decodeOriginalFile(J)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", media list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/sunnyCore/IMediaData;

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", media list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decodeOriginalFile] List is null, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", media list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decodeOriginalFile] decodeItem index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", quality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v15

    const/4 v1, 0x4

    if-ne v15, v1, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunnyCore/IMediaData;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v3

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheItem(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)Lcom/htc/sunny2/common/CacheItem;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v14}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;

    move-result-object v16

    check-cast v16, Lcom/htc/sunny2/common/IterationDecodeTask;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    invoke-virtual/range {v16 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v1

    or-int/lit8 v11, v1, 0x20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-nez v1, :cond_5

    or-int/lit8 v11, v11, 0x10

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecoderCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v1, :cond_6

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected decodeViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Lcom/htc/sunny2/common/ViewDecodeTask;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "[decodeViewTask] View decode thread or task is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setSkipAndFailTextureToCurrent(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;Z)V

    goto :goto_0
.end method

.method protected doDecodeViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnViewToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected doProcessViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/common/IterationTask;

    instance-of v5, v1, Lcom/htc/sunny2/common/ViewDecodeTask;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] Unsupported task, idx "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_0

    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/htc/sunny2/common/ViewDecodeTask;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->getTaskIndex()I

    move-result v0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->isTaskFinished()Z

    move-result v5

    if-eqz v5, :cond_5

    iput v0, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v4, v5, :cond_2

    iput-object v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    :goto_1
    iget-object v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] No reusable texture. texture used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pool "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", map "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", texture fail used count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", view id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->getViewId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    invoke-direct {p0, p1, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setSkipAndFailTextureToCurrent(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;Z)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAViewTextureToReuse()Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    iput-object v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v2, v5, :cond_4

    invoke-virtual {p0, v0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeViewTexture(II)Lcom/htc/sunnyCore/Texture;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    :cond_4
    invoke-virtual {p0, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setViewTexture(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v5

    sget-object v6, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->CANCEL:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    if-ne v5, v6, :cond_6

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    invoke-virtual {p0, v0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doProcessViewTask] task not finished or cancel, incorret status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ViewDecodeTask;->release()V

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto/16 :goto_0
.end method

.method protected findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_2
    if-ne v1, v6, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    if-eq v1, v6, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_3
    if-ne v1, v6, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    if-eq v1, v6, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAViewTextureToReuse()Lcom/htc/sunnyCore/Texture;
    .locals 10

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v6, v1

    :goto_0
    return-object v6

    :cond_0
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getMinValidIndex()I

    move-result v7

    sub-int v3, v6, v7

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/TextureMap;->getMaxValidIndex()I

    move-result v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    sub-int v4, v6, v7

    const/4 v5, 0x0

    if-lez v3, :cond_2

    add-int/2addr v5, v3

    :cond_2
    if-lez v4, :cond_3

    add-int/2addr v5, v4

    :cond_3
    :goto_1
    if-lez v5, :cond_7

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/sunnyCore/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, v2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v1, v6, :cond_5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v6, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "BUNDLE_FLAG"

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v2, v0}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_6
    move-object v6, v1

    goto :goto_0

    :cond_7
    move-object v6, v1

    goto :goto_0
.end method

.method protected findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 5

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecodeInVisibleRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecodeInBufferRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecodeInVisibleRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecodeInBufferRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1
.end method

.method protected findAnItemToDecodeInBufferRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z
    .locals 7

    const/4 v4, 0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v3, v5, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v2, v5, 0x1

    const/4 v1, 0x0

    :cond_0
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v3, v5, :cond_1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v3, v5, :cond_2

    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v2, v5, :cond_a

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v2, v5, :cond_a

    :cond_2
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v3, v5, :cond_6

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v3, v5, :cond_6

    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isRealTexture(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v3, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(II)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v5

    if-nez v5, :cond_5

    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput p2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iget v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    :cond_4
    :goto_0
    return v4

    :cond_5
    add-int/lit8 v3, v3, -0x1

    :cond_6
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v2, v5, :cond_9

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v2, v5, :cond_9

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isRealTexture(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v2, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(II)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v5

    if-nez v5, :cond_8

    iput v2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput p2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iget v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v1, v5, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v4, v5, :cond_b

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "bottom index is smaller than top index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v4, -0x1

    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected findAnItemToDecodeInVisibleRangeByQuality(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;I)Z
    .locals 12

    const/4 v11, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v9, :cond_4

    :cond_0
    iput-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_0
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v4, v9, :cond_8

    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isRealTexture(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, v4, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(II)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_3

    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput p2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iget v8, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    :cond_2
    :goto_1
    return v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v2, v3, v9

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v1, v9, v2

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v9, v2

    add-int/lit8 v2, v9, -0x1

    move v4, v1

    :goto_2
    if-gt v4, v3, :cond_8

    if-gez v4, :cond_5

    const/4 v4, 0x0

    :cond_5
    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isRealTexture(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, v4, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(II)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v9

    if-nez v9, :cond_7

    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput p2, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iget v8, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v9, v2, v9

    if-nez v9, :cond_b

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v1, v9, :cond_a

    :cond_8
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_17

    const/4 v5, 0x1

    :goto_3
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    if-ge v5, v9, :cond_17

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v9, :cond_9

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v9, :cond_f

    :cond_9
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_4
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v4, v9, :cond_13

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v9, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v6

    if-nez v6, :cond_d

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Layer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IMediaData is null, item index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", list count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v10}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v3, v1, -0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v9, v3, v9

    add-int/lit8 v1, v9, 0x1

    if-ltz v1, :cond_8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ge v1, v9, :cond_c

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int v2, v9, v1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_5
    add-int/lit8 v4, v1, -0x1

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    :cond_d
    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_e

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    if-nez v9, :cond_e

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(II)Z

    move-result v9

    if-nez v9, :cond_e

    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_f
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v2, v3, v9

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v1, v9, v2

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v9, v2

    add-int/lit8 v2, v9, -0x1

    move v4, v1

    :goto_6
    if-gt v4, v3, :cond_13

    if-gez v4, :cond_10

    const/4 v4, 0x0

    :cond_10
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v9, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v6

    if-nez v6, :cond_11

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Layer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IMediaData is null, item index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", list count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v10}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    :cond_11
    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v6}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_12

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    if-nez v9, :cond_12

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(II)Z

    move-result v9

    if-nez v9, :cond_12

    iput v4, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v9, v2, v9

    if-nez v9, :cond_15

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v1, v9, :cond_14

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_14
    add-int/lit8 v3, v1, -0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v9, v3, v9

    add-int/lit8 v1, v9, 0x1

    if-ltz v1, :cond_13

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ge v1, v9, :cond_16

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int v2, v9, v1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_7
    add-int/lit8 v4, v1, -0x1

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_16
    const/4 v2, 0x0

    goto :goto_7

    :cond_17
    move v7, v8

    goto/16 :goto_1
.end method

.method protected findAnViewToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 10

    const/4 v8, 0x0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v7, :cond_2

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_0
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v7, :cond_5

    invoke-virtual {p0, v3, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_1

    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v1, v2, v7

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v0, v7, v1

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v7, v1

    add-int/lit8 v1, v7, -0x1

    move v3, v0

    :goto_2
    if-gt v3, v2, :cond_5

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {p0, v3, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_4

    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v7, v1, v7

    if-nez v7, :cond_a

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v0, v7, :cond_9

    :cond_5
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v6, v7, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v5, v7, 0x1

    const/4 v4, 0x0

    :cond_6
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v6, v7, :cond_7

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v6, v7, :cond_8

    :cond_7
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v5, v7, :cond_10

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v5, v7, :cond_10

    :cond_8
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v6, v7, :cond_d

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v6, v7, :cond_d

    invoke-virtual {p0, v6, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_c

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v7

    if-nez v7, :cond_c

    iput v6, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v0, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v7, v2, v7

    add-int/lit8 v0, v7, 0x1

    if-ltz v0, :cond_5

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ge v0, v7, :cond_b

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int v1, v7, v0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_3
    add-int/lit8 v3, v0, -0x1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    add-int/lit8 v6, v6, -0x1

    :cond_d
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v5, v7, :cond_f

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v5, v7, :cond_f

    invoke-virtual {p0, v5, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_e

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v7

    if-nez v7, :cond_e

    iput v5, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    :cond_f
    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v4, v7, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v7, v8, :cond_11

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v8, "bottom index is smaller than top index"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v7, -0x1

    iput v7, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1
.end method

.method public freeOutOfRange(III)V
    .locals 10

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeInvisibleRangeTextures + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v2

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getMinValidIndex()I

    move-result v4

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->getMaxValidIndex()I

    move-result v3

    if-gez v4, :cond_0

    const/4 v4, 0x0

    :cond_0
    if-lt v3, v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    :cond_1
    move v1, v4

    :goto_0
    if-gt v1, v3, :cond_5

    if-gt p2, v1, :cond_3

    if-gt v1, p3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v1, v9}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7, v1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v7, :cond_7

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    :goto_2
    if-ge v1, v5, :cond_7

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v7, :cond_6

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeInvisibleRangeTextures - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eqz p3, :cond_0

    const-string v4, "SUB_INDEX"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "TEXTURE_FROM_VIEW"

    invoke-virtual {p3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    if-eq v2, v6, :cond_2

    invoke-virtual {p0, p2, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v1, v4, :cond_1

    move-object v3, v1

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v1, v4, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method protected getCacheItem(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)Lcom/htc/sunny2/common/CacheItem;
    .locals 11

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItemTool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/CacheItem;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    :goto_0
    return-object v1

    :cond_0
    move/from16 v0, p6

    int-to-long v6, v0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;->updateContent(ILjava/lang/String;JJI)V

    iput-object p1, v1, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move/from16 v0, p9

    iput-boolean v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    goto :goto_0
.end method

.method protected getCacheSet(I)I
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getCacheSet()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getIMediaDataByIndex(Lcom/htc/sunnyCore/IMediaList;II)Lcom/htc/sunnyCore/IMediaData;
    .locals 7

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[getMediaDataByIndex] MediaList is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p1, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMediaDataByIndex] MediaItem is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preparator list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", media list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/IMediaData;

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMediaDataByIndex] MediaItem is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subIdx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preparator list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", media list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMediaDataByIndex] List is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subIdx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preparator list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", media list count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto/16 :goto_0
.end method

.method protected getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    if-nez v0, :cond_0

    new-instance v1, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct {v1}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    if-nez v0, :cond_0

    new-instance v1, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v1}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    if-nez v0, :cond_0

    new-instance v1, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v1}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    if-nez v0, :cond_0

    new-instance v1, Lcom/htc/sunny2/common/ViewDecodeTask;

    invoke-direct {v1}, Lcom/htc/sunny2/common/ViewDecodeTask;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(ILcom/htc/sunnyCore/IMediaList;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v0

    return-object v0
.end method

.method protected getPreparatorPrototype(ILcom/htc/sunnyCore/IMediaList;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 8

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_0
    instance-of v5, p2, Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;

    if-eqz v5, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;

    :try_start_0
    invoke-interface {v2, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;->getPrototypeByIndex(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][GridViewPreparatorImpl][getPreparatorPrototype]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTextureMap] Error subIndex, subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Lcom/htc/sunny2/common/ViewDecodeTask;
    .locals 7

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v0}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[getViewTask] MediaData or Prototype is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIterationTaskGallery(I)Lcom/htc/sunnyCore/common/IterationTask;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/common/ViewDecodeTask;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThreadCallback:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/common/ViewDecodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/common/ViewDecodeTask;->setMediaData(Lcom/htc/sunnyCore/IMediaData;)V

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/common/ViewDecodeTask;->setPrototype(Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;)V

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/ViewDecodeTask;->setTaskIndex(I)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getViewTask] view task, index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", view id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getViewTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getViewTextureMap] Unsupported view idex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "InValue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    const-string v1, "TEXTURE_MAX_COUNT"

    sget v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v0, v1, :cond_1

    sget v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Environment handle is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "TexturePreparationMaxCount is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    monitor-exit v2

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    const-string v1, "CACHE_SET"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    const-string v1, "MULTIPLE_FOLDER_IMAGES"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    :goto_1
    const-string v1, "GRID_WIDTH_HEIGHT"

    const/16 v3, 0xb2

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    const-string v1, "GRID_MEM_CACHE_SIZE"

    const/16 v3, 0xc8

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    const-string v1, "GRID_FILE_CACHE_SIZE"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    const-string v1, "ENABLE_SPECIAL_CACHE"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    new-instance v1, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    new-instance v1, Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setPriority(I)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTaskThread;->beginThread()V

    monitor-exit v2

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V
    .locals 8

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][GridViewPreparatorImpl][init]: no param..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getMaxTextureCount()I

    move-result v2

    sget v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v2, v4, :cond_1

    sget v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "Environment handle is 0"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][GridViewPreparatorImpl][init]: zero texture count.."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    monitor-exit v5

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    instance-of v4, p2, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;

    if-eqz v4, :cond_5

    move-object v0, p2

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;

    move-object v3, v0

    invoke-interface {v3}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;->isEnableOverlayImage()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;->getOverlapImageSize()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    invoke-interface {v3}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;->isEnableAntialias()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "Folder"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    :cond_5
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v4, v6

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getCacheSet()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    new-instance v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v4, p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getDimension()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getMemoryCacheSize()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->isEnableFileCache()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getFileCacheSize()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    :cond_6
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->isEnableBorder()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v4, :cond_7

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getBorderWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getBorderColor()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    :cond_7
    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getSpecialMode()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    invoke-interface {p2}, Lcom/htc/sunnyCore/IParamsPreparator;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v4, "BUNDLE_ENABLE_QUALITY_OPTIONS"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v4, v6

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mQualityList:[I

    const/4 v6, 0x1

    const/4 v7, 0x1

    aput v7, v4, v6

    :cond_8
    new-instance v4, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v4}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    new-instance v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    new-instance v4, Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v4, v6}, Lcom/htc/sunnyCore/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setPriority(I)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->beginThread()V

    instance-of v4, p2, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    if-eqz v4, :cond_9

    check-cast p2, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->isEnableViewBackgroundDecode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    :cond_9
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v4, :cond_a

    new-instance v4, Lcom/htc/sunnyCore/common/IterationTaskThread;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "View"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/htc/sunnyCore/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setPriority(I)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->beginThread()V

    :cond_a
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "ThumbnailPreparator_init -"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected isCacheable(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Z
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[isCacheable] decodeItem is null, use default cache enable flag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDecodedSourceType(I)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isFindBetterQuality(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isFindBetterQuality(III)Z

    move-result v0

    return v0
.end method

.method protected isFindBetterQuality(III)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isBetterDecodedQuality] Null ItemAttrbutes, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target quality "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getProcessQuality(I)I

    move-result v1

    if-le p3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(II)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isOffLineDecodeAndNotInOffLineVisibleRange] Null ItemAttrbutes, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isRealTexture(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isTimeExpired(J)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterate(J)V
    .locals 0

    return-void
.end method

.method public loadRange(IIIJ)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] null media list."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v3, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] no cache."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] no texture map."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    move/from16 v21, v0

    if-gez v21, :cond_4

    const/16 v21, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v24, v3, -0x1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v3, :cond_7

    new-instance v23, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    move/from16 v10, v21

    :goto_1
    move/from16 v0, v24

    if-gt v10, v0, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-ltz v3, :cond_9

    :cond_6
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    :cond_7
    const/16 v27, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-ltz v3, :cond_b

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CachePuller;->free()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, v23

    iput v10, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Lcom/htc/sunny2/common/ViewDecodeTask;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/htc/sunny2/common/ViewDecodeTask;->onSetup()V

    invoke-virtual/range {v34 .. v34}, Lcom/htc/sunny2/common/ViewDecodeTask;->onIterate()Z

    invoke-virtual/range {v34 .. v34}, Lcom/htc/sunny2/common/ViewDecodeTask;->onEnd()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAViewTextureToReuse()Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] No usable view texture. Map size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pool size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", texutre count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v23

    iput-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setViewTexture(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v29

    if-nez v29, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] Get map error, size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    move/from16 v10, v21

    :goto_4
    move/from16 v0, v24

    if-gt v10, v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-ltz v3, :cond_e

    :cond_d
    :goto_5
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3, v10}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v30

    if-nez v30, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] mediaData is null, content identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v27, 0x1

    if-ge v3, v4, :cond_11

    :cond_10
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v30, :cond_10

    :cond_12
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] itemIdx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v5

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v7

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v14

    long-to-int v9, v14

    const/16 v11, 0x11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    invoke-virtual/range {v3 .. v13}, Lcom/htc/sunny2/common/CachePuller;->setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIIIZI)Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] mCachePuller.setup NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/CachePuller;->iterate(J)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CachePuller;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] FindATextureToReuse NG - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v22, :cond_10

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v22, 0x0

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    move-object/from16 v0, v22

    invoke-virtual {v13, v0, v3}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v3, :cond_15

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v16

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    move/from16 v19, v0

    invoke-virtual/range {v13 .. v19}, Lcom/htc/sunnyCore/Texture;->setBorder(IIIIII)V

    :cond_15
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v31

    if-eqz v31, :cond_16

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v13, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v20

    if-eqz v20, :cond_17

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-interface {v3, v0, v10, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadRange] NG - oriTextureHandle != 0, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v31

    if-eq v0, v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, v31

    if-eq v0, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] oriTextureHandle is not failTexture, recycle to pool"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] NG - mTexturePool is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v32 .. v32}, Lcom/htc/sunnyCore/Texture;->release()V

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_19
    :goto_8
    invoke-interface/range {v30 .. v30}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v13, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v20

    if-eqz v20, :cond_17

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] oriTextureHandle is failTexture"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[loadRange] textureHandle is the same as store in textureMap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method public notifyDataItemChanged(II)V
    .locals 8

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v4, p2, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableQualityOptions:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, p2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v4, v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureRelease(Lcom/htc/sunnyCore/Texture;Ljava/util/List;Z)V

    :cond_4
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public notifyDataItemChanged(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->checkImageUpdate(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->checkViewUpdate(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method protected notifyLoadingStatus(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    :cond_0
    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread GridView preparation start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread GridView preparation end"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 12

    const-wide/16 v10, 0x2

    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "onProcessPreparationIRT_Force stop"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    :goto_0
    return v3

    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    if-eqz v6, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    monitor-exit v5

    move v3, v4

    goto :goto_0

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v5, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "onProcessPreparationIRT_Not initialize"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v5, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "Force stop"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "DecodeItem is null"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    monitor-exit v5

    move v3, v4

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v3, v9, :cond_8

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v3, v6, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v3, v6, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DecodeItem is expired "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v3, v6, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, p1, v6

    cmp-long v3, v1, v10

    if-gez v3, :cond_9

    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v3

    if-eqz v3, :cond_a

    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    :cond_a
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->doDecodeViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processMediaThumbnail(J)Z

    move-result v3

    if-eqz v3, :cond_c

    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v3

    if-eqz v3, :cond_d

    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v3

    if-ge v3, v8, :cond_f

    if-ge v0, v8, :cond_f

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v3

    if-eqz v3, :cond_e

    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    :cond_e
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v6

    add-int/2addr v3, v6

    if-le v3, v8, :cond_10

    :cond_f
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v3

    if-eqz v3, :cond_18

    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v3, v9, :cond_16

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    iput-object v6, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    :cond_11
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v3, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeFromCacheOrOriginalFile(J)Z

    :cond_12
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    goto :goto_3

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_14
    :try_start_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Texture cache is full, textureMap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", texturePool "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", decodeItem index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTexturesCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextureMap2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", TextureMap3 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", failTexture "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_3

    :cond_16
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->getCount()I

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    if-nez v3, :cond_12

    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    if-nez v3, :cond_12

    :cond_17
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    goto/16 :goto_2

    :cond_18
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->doProcessViewTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, p1, v6

    cmp-long v3, v1, v10

    if-gez v3, :cond_1b

    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processCurrentTask(J)Z

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v3

    if-nez v3, :cond_1c

    if-lt v0, v8, :cond_1a

    :cond_1c
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v4

    goto/16 :goto_0
.end method

.method public pausePreparator()V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processCurrentTask(J)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->getTaskCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Task waiting time over time limit, request resume thread"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/common/IterationTaskThread;->resumeThread()V

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/sunnyCore/common/IterationTask;

    if-nez v23, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[processCurrentTask] IteratorTask is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/common/IterationTask;->isTaskFinished()Z

    move-result v3

    if-eqz v3, :cond_1a

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const/16 v17, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v3, :cond_5

    move-object/from16 v14, v23

    check-cast v14, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v14}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v17

    invoke-virtual {v14}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[processCurrentTask] cacheItem is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_7

    check-cast v23, Lcom/htc/sunny2/common/IterationTaskGallery;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    :goto_3
    const/16 v23, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[processCurrentTask] Encode cache task"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v3, :cond_4

    move-object/from16 v14, v23

    check-cast v14, Lcom/htc/sunny2/common/IterationDecodeTask;

    const/16 v17, 0x0

    invoke-virtual {v14}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v24

    if-nez v24, :cond_9

    iget v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v24

    :cond_9
    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "No reusable texture."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v2, 0x0

    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_a

    check-cast v23, Lcom/htc/sunny2/common/IterationTaskGallery;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    :goto_4
    const/16 v23, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, v22

    if-ne v0, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeTexture(II)Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    :cond_c
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_d

    check-cast v23, Lcom/htc/sunny2/common/IterationTaskGallery;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    :goto_5
    const/16 v23, 0x0

    if-eqz v17, :cond_f

    iget-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_e

    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_5

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Error on encode cache, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto :goto_6

    :cond_f
    iget-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v4, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v3, v4, :cond_12

    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    const/4 v4, 0x1

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Bitmap is null, cacheItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ori filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto :goto_7

    :cond_12
    iget-object v10, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isCacheable(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v21

    if-nez v21, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] ITERATE: MediaItem is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_13
    invoke-interface/range {v21 .. v21}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v11

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/sunnyCore/IMediaData;

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] ITERATE: MediaItem is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] ITERATE: MediaDataList is null, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", identifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preparator list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mediaList count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_15
    invoke-interface/range {v21 .. v21}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] encode itemIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v4

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual/range {v2 .. v11}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v13, 0x11

    :goto_8
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    iget v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v15, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    invoke-virtual {v15, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    invoke-virtual {v15, v13}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v15, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v15, v3}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v3, :cond_17

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v3, v15}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_18
    const/4 v13, 0x1

    goto :goto_8

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask] Bitmap is null, cacheItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ori filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto/16 :goto_7

    :cond_1a
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v3

    sget-object v4, Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;->CANCEL:Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    if-ne v3, v4, :cond_21

    const/4 v2, 0x0

    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v3, :cond_1e

    move-object/from16 v14, v23

    check-cast v14, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v14}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    :cond_1b
    :goto_9
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_20

    check-cast v23, Lcom/htc/sunny2/common/IterationTaskGallery;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    :goto_a
    const/16 v23, 0x0

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v12

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->cancelTask(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v2, 0x0

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "[processCurrentTask][CANCEL] Encode cache task"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_1f
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v3, :cond_1b

    move-object/from16 v14, v23

    check-cast v14, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-virtual {v14}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    goto :goto_9

    :cond_20
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_a

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processCurrentTask]-3 , incorrect status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/common/IterationTask;->getTaskStatus()Lcom/htc/sunnyCore/common/IterationTask$TaskStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v3, :cond_22

    move-object/from16 v3, v23

    check-cast v3, Lcom/htc/sunny2/common/IterationTaskGallery;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskGallery;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    check-cast v23, Lcom/htc/sunny2/common/IterationTaskGallery;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    :goto_b
    const/16 v23, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_22
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_b
.end method

.method protected processMediaThumbnail(J)Z
    .locals 14

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/CacheItem;

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Lcom/htc/sunny2/common/CacheItem;->isStatus(I)Z

    move-result v11

    if-ne v10, v11, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/htc/sunny2/common/CacheItem;->getPosition()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v12, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v11

    if-eq v10, v11, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v10, v11, :cond_3

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v10, v11, :cond_8

    :cond_3
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v10, v11}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v9

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunnyCore/IMediaData;

    if-nez v5, :cond_6

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - MedaiDataList is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v10

    iput v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSpecificCacheFlag:I

    iput v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-boolean v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v2, 0x11

    :goto_1
    new-instance v8, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v8}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    invoke-virtual {v8, v1}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    invoke-virtual {v8, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v10, :cond_8

    if-eqz v8, :cond_8

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v10, v8}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    :cond_8
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    if-nez v7, :cond_9

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    :cond_9
    if-eqz v7, :cond_23

    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v7, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v10, :cond_11

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v10, :cond_10

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v10

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v10, v11, :cond_e

    :cond_a
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v10, v11}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    if-nez v5, :cond_19

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_e
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "oldTexture not fail texture, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_f
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_10
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    :cond_11
    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v10, :cond_14

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "oldTexture not fail texture 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_12
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_13
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_14
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    :cond_15
    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v10, :cond_18

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "oldTexture not fail texture 3"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_16

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_16
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_17
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_18
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    :cond_19
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v9

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1a

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunnyCore/IMediaData;

    if-nez v5, :cond_1b

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_1a
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processMediaThumbnail NG - MediaDataList is null, index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subIdx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v12, v12, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", preparator list count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMediaList count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v12}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_1b
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_1c
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v10

    iput v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-boolean v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v10

    if-eqz v10, :cond_1e

    const/16 v2, 0x11

    :goto_3
    new-instance v8, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v8}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setTaskIndex(I)V

    invoke-virtual {v8, v1}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    invoke-virtual {v8, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridCallbackListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;

    invoke-virtual {v8, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCallbackListener(Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v10, :cond_1d

    if-eqz v8, :cond_1d

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v10, v8}, Lcom/htc/sunnyCore/common/IterationTaskThread;->addTask(Lcom/htc/sunnyCore/common/IterationTask;)V

    :cond_1d
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v2, 0x1

    goto :goto_3

    :cond_1f
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    goto :goto_4

    :cond_20
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - get null bitmap, recycle texture"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v10

    if-nez v10, :cond_21

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_21
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v11, 0x0

    iget v12, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_22
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    goto :goto_4

    :cond_23
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "processMediaThumbnail NG - No reusable texture"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected queryTexture(I)Lcom/htc/sunnyCore/Texture;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method protected queryTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[queryTexture] TextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method protected queryViewTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[queryViewTexture] ViewTextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", viewIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method protected recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/sunny2/common/CacheItem;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItemTool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/sunny2/common/IterationTaskGallery;->release()V

    invoke-virtual {p1}, Lcom/htc/sunny2/common/IterationTaskGallery;->getTaskId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEncodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeTaskPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Lcom/htc/sunny2/common/ViewDecodeTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    iget-object v0, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    return-void
.end method

.method protected recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[recycleViewTexture] mViewTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[recycleViewTexture] mViewTexturePool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    goto :goto_0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList;",
            "IZI)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refresh() - null mediaList "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_5

    const/4 v9, 0x0

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v2, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual/range {p0 .. p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    const/4 v12, 0x0

    :goto_3
    return-object v12

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "refresh() - new media list count is 0"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_3

    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v2, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-gez v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v2, v5, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gez v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v2, v5, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v2, v5, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getMemCacheSize()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v5, v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->newMemoryCacheSet(II)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_e
    const/4 v12, 0x0

    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "decodeItem is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/htc/sunny2/common/IterationTaskGallery;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto :goto_5

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v2, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "refresh NG - mTexturePool is full"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_4

    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_15
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_16

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    :cond_16
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    if-ge v6, v2, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v3

    if-eqz v3, :cond_17

    new-instance v4, Lcom/htc/sunnyCore/common/TextureMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v4, v2}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureMap(Lcom/htc/sunnyCore/common/TextureMap;I)V

    new-instance v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    if-nez v6, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".ItemsAttributes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureReuseForNewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/IMediaList;ILcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureMapRelease(Lcom/htc/sunnyCore/common/TextureMap;Ljava/util/List;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setItemsAttrbutes(ILcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".ItemsAttributes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    goto :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v2, :cond_1c

    if-eqz v9, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/common/IterationTaskGallery;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto :goto_8

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_1b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v15

    if-eqz v15, :cond_1c

    new-instance v14, Lcom/htc/sunnyCore/common/TextureMap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v14, v2}, Lcom/htc/sunnyCore/common/TextureMap;-><init>(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setViewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v14, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->textureReuseForNewViewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/IMediaList;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->viewTextureMapRelease(Lcom/htc/sunnyCore/common/TextureMap;Z)V

    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    move/from16 v16, v0

    mul-int v5, v5, v16

    if-le v2, v5, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    div-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refresh-, item count "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected removeTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeTexture] TextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method protected removeViewTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Preparator not initialize or no MediaList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getViewTextureMap(I)Lcom/htc/sunnyCore/common/TextureMap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeViewTexture] ViewTextureMap is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", viewIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_0
.end method

.method public resetDecodeDirection()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setDecodeDirection(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    return-void
.end method

.method public resumePreparator()V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->requestResumeTask(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setColumnNumber(I)V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    :cond_0
    return-void
.end method

.method public setDecodeDirection(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    return-void
.end method

.method protected setFailTextureToCurrentTask()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    return-void
.end method

.method protected setFailTextureToCurrentTask(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFailTextureToCurrentTask NG - texture is dirty, mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setFailTextureToCurrentTask] texture is dirty, current texture is FailTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_5
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFailTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_9
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_b
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setFailTextureToCurrentTask] current texture is FailTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected setItemsAttrbutes(ILcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V
    .locals 0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    invoke-interface {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setTextureMap(Lcom/htc/sunnyCore/common/TextureMap;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTextureMap] Error subIdx, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    :pswitch_2
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setTextureToCurrentTask(Landroid/graphics/Bitmap;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[setTextureToCurrentTask] bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v12, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v1, v3, v12}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setTextureToCurrentTask NG - mDecodeItem.mTexture is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableAntiAlias:Z

    invoke-virtual {v0, p1, v2}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/Texture;->setSourceWidth(I)V

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Texture;->setSourceHeight(I)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Texture;->setIdentifier(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEnableBorder:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderWidth:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBorderColor:I

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunnyCore/Texture;->setBorder(IIIIII)V

    :cond_6
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunnyCore/SunnyCore;->Texture_Realize(I)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_9

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v1, v3, v12}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v12, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v2, :cond_a

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_d

    :goto_3
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v2, :cond_f

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_c
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_2

    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTexture NG 1 - oriTextureHandle != 0, isFailTexture "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v8, v2, :cond_e

    move v2, v11

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    move v2, v1

    goto :goto_4

    :cond_f
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-ne v2, v11, :cond_15

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_11

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_2

    :cond_11
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_13

    :goto_5
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v2, :cond_14

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_12
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_2

    :cond_13
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 2 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_14
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_15
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->get(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    if-nez v8, :cond_16

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_2

    :cond_16
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    if-ne v2, v11, :cond_18

    :goto_6
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v8, v2, :cond_19

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v9

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_17
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    goto/16 :goto_2

    :cond_18
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setTexture NG 3 - oriTextureHandle != 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_19
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Add decodeItem to mTextureMap is Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_2
.end method

.method protected setViewTexture(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 13

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getTaskIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v5

    if-eq v6, v5, :cond_2

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "[setViewTexture] Prototype is not the same."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    const/4 v10, 0x0

    invoke-virtual {p0, v2, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->removeViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getViewId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iput v9, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    iget-object v7, p2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v7, :cond_3

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "[setViewTexture] decodeItem.mTexture is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Lcom/htc/sunnyCore/Texture;->setSourceWidth(I)V

    invoke-virtual {v7, v3}, Lcom/htc/sunnyCore/Texture;->setSourceHeight(I)V

    invoke-virtual {v7, v8}, Lcom/htc/sunnyCore/Texture;->setIdentifier(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v10

    invoke-static {v10}, Lcom/htc/sunnyCore/SunnyCore;->Texture_Realize(I)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "[setViewTexture] ViewTextureMap is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleTaskAndDecodeItemResource(Lcom/htc/sunny2/common/ViewDecodeTask;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p0, v2, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryViewTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v10, v2, v7, v8}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    :goto_1
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    if-eqz v10, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v10, "BUNDLE_FLAG"

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v2, v1}, Lcom/htc/sunnyCore/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setViewTexture] oriTextureHandle is not null, isFailTexture "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v4, v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v4, v7, :cond_7

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v10, v2}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleViewTexture(Lcom/htc/sunnyCore/Texture;)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v10, v2, v7, v8}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v11, "[setViewTexture] texture is the same as store in viewTextureMap"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setViewTexture] Bitmap is null, content index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", view id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/htc/sunny2/common/ViewDecodeTask;->getViewId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    invoke-direct {p0, p2, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setSkipAndFailTextureToCurrent(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;Z)V

    goto/16 :goto_0
.end method

.method protected setViewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setViewTextureMap] Unsupported view idex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibleRange(III)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Not initialize"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Visible range setting error. beginIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    if-gez v1, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "visible range is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "item count is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :cond_6
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    :cond_7
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOverlapImageSize:I

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_8

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    :cond_8
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int v0, v2, v1

    if-ltz v0, :cond_11

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v2, :cond_10

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :cond_9
    :goto_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_a

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->setVisibleRange(II)V

    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v2, v2, -0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v2, v3, :cond_c

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    :cond_c
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v2, v3, :cond_d

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    :cond_d
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    :cond_e
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setVisibleRange(II)V

    :cond_f
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewDecodeThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/common/IterationTaskThread;->setVisibleRange(II)V

    goto/16 :goto_0

    :cond_10
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_9

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    goto/16 :goto_1

    :cond_11
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "top = bottom = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 17

    const/4 v12, 0x0

    const/16 v16, 0x1001

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/16 v16, 0x1002

    :cond_0
    packed-switch v16, :pswitch_data_0

    :goto_0
    if-nez v12, :cond_2

    :goto_1
    return-void

    :pswitch_0
    new-instance v1, Lcom/htc/sunny2/common/ImageDecodeItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/ImageDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v2

    or-int/lit8 v9, v2, 0x30

    invoke-virtual {v1, v9}, Lcom/htc/sunny2/common/ImageDecodeItem;->setDecodeFlags(I)V

    move-object v12, v1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    const/4 v15, 0x0

    :goto_2
    new-instance v12, Lcom/htc/sunny2/common/ImageResourceDecodeItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getCacheSet(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-direct {v12, v2, v3, v0, v15}, Lcom/htc/sunny2/common/ImageResourceDecodeItem;-><init>(IILcom/htc/sunnyCore/IMediaData;Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    goto :goto_2

    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v14

    iput v14, v12, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    const/4 v11, 0x0

    packed-switch v14, :pswitch_data_1

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v11, 0x1

    :cond_4
    :goto_3
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v2

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v2

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iput v2, v12, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    if-nez v11, :cond_9

    const/4 v2, 0x1

    :goto_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v2, v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v13

    if-eqz v13, :cond_5

    iget v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    iget v2, v12, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v12, 0x0

    goto/16 :goto_1

    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData ParcelFileDescriptor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto :goto_3

    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData Uri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto/16 :goto_3

    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v12, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentTaskToMediaDecodeThread: MediaData InputStream is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected textureReuseForNewTextureMap(Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/common/TextureMap;Lcom/htc/sunnyCore/IMediaList;ILcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V
    .locals 14

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/TextureMap;->size()I

    move-result v7

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :goto_0
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v2, v11, :cond_0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[textureReuseForNewTextureMap] null media data, item count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", item index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v12, p4, 0x1

    if-lt v11, v12, :cond_2

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v5, :cond_2

    :cond_4
    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/htc/sunnyCore/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v10, v11, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10, v3}, Lcom/htc/sunnyCore/common/TextureMap;->put(ILcom/htc/sunnyCore/Texture;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v11, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getItemsAttrbutes(I)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getDecodedQuality(I)I

    move-result v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessQuality(II)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public unbind(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "decodeItem is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v6}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v6}, Lcom/htc/sunny2/common/CachePuller;->free()V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->freeInvisibleRange()V

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_9

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_8

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v6, :cond_7

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunnyCore/common/IterationTaskThread;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/IterationTaskThread;->cancelAllTask()V

    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunnyCore/Texture;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "unbind NG - mTexturePool is full"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v5, v6, :cond_3

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_2

    :cond_8
    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    :cond_9
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_d

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    :goto_3
    if-ge v0, v3, :cond_c

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v6, :cond_b

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v5, v6, :cond_a

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_4

    :cond_c
    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunnyCore/common/TextureMap;

    :cond_d
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_11

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    :goto_5
    if-ge v0, v3, :cond_10

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v6, :cond_f

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v5, v6, :cond_e

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_6

    :cond_10
    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunnyCore/common/TextureMap;

    :cond_11
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v6, :cond_14

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v3

    :goto_7
    if-ge v0, v3, :cond_13

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v6, :cond_12

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    :cond_14
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/htc/sunny2/common/IterationTaskGallery;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto :goto_8

    :cond_16
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_17
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsViewBackgroundDecode:Z

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    if-eqz v6, :cond_1b

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/common/TextureMap;->getContentListItemsCount()I

    move-result v3

    :goto_9
    if-ge v0, v3, :cond_1a

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/common/TextureMap;->remove(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    if-eqz v5, :cond_19

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v6, :cond_19

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    :cond_18
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-ne v5, v6, :cond_18

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    goto :goto_a

    :cond_1a
    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTextureMap:Lcom/htc/sunnyCore/common/TextureMap;

    :cond_1b
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v6, :cond_1e

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v3

    :goto_b
    if-ge v0, v3, :cond_1d

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    if-eqz v5, :cond_1c

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eq v5, v6, :cond_1c

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->release()V

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    :cond_1e
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTexturesCount:I

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewFailTextureUsedCount:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/common/IterationTaskGallery;

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleIterationTaskGallery(Lcom/htc/sunny2/common/IterationTaskGallery;)V

    goto :goto_c

    :cond_1f
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_20
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunnyCore/Texture;

    :cond_21
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunnyCore/Texture;

    :cond_22
    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "Clear video tasks."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "Release mContentList"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    :cond_24
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "unbind-"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
