.class public Lcom/htc/music/util/AsyncImageDecoder;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;,
        Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;,
        Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;,
        Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
    }
.end annotation


# static fields
.field private static final DECODE:I = 0x1

.field private static final DECODED:I = 0x2

.field private static final ONLINE_DECODE:I = 0x4

.field private static final QUIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[AsyncImageDecoder]"

.field private static final THREAD_NAME:Ljava/lang/String; = "AsyncImageDecoderThread"

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mContext:Landroid/content/Context;

.field private mDecodeVisibleFirst:Z

.field private mEnd:I

.field private mFilter:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mMergeAfterDecoded:Z

.field private mMergeHeight:I

.field private mMergeImage:Landroid/graphics/Bitmap;

.field private mMergeImageId:I

.field private mMergeOffsetX:I

.field private mMergeOffsetY:I

.field private mMergeWidth:I

.field private mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

.field private mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

.field private mPause:Z

.field private mRecycleOnPause:Z

.field private mReportError:Z

.field private mScale:Z

.field private mStart:I

.field private mSyncObject:Ljava/lang/Object;

.field private mTouchFile:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 43
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 45
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 52
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 68
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 76
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 84
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 92
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 96
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 98
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 100
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 102
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 104
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 106
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 108
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 110
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 203
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 204
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 205
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 206
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 207
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 208
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;II)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 43
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 45
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 52
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 68
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 76
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 84
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 92
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 96
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 98
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 100
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 102
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 104
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 106
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 108
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 110
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 219
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 220
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 221
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 222
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 223
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 224
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 225
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 226
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 237
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 43
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 45
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 52
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 68
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 76
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 84
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 92
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 96
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 98
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 100
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 102
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 104
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 106
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 108
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 110
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 238
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 239
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 240
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 241
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 242
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 243
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 244
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 245
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"
    .parameter "touchFile"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 43
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 45
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 52
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 68
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 76
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 84
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 92
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 96
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 98
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 100
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 102
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 104
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 106
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 108
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 110
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 259
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 260
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 261
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 262
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 263
    iput-boolean p6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 264
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 265
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 266
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;IIZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "onlineListener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 43
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 45
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 52
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 68
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 76
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 84
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 92
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 96
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 98
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 100
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 102
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 104
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 106
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 108
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 110
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 306
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 307
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 308
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 309
    iput-boolean p6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 310
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 311
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 312
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 313
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 314
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 315
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;IIZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "onlineListener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"
    .parameter "touchFile"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 280
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 43
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 45
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 52
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 68
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 76
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 84
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 90
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 92
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 96
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 98
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 100
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 102
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 104
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 106
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 108
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 110
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 282
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 283
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 284
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 285
    iput-boolean p6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 286
    iput-boolean p7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 287
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 288
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 290
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 292
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 293
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/util/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/util/AsyncImageDecoder;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/util/AsyncImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/music/util/AsyncImageDecoder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/util/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/util/AsyncImageDecoder;ILcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    return-object v0
.end method

.method private add(ILcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 2
    .parameter "pos"
    .parameter "task"

    .prologue
    .line 557
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 559
    monitor-exit v1

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 562
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 545
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 547
    .local v0, indexOfTask:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 552
    :goto_0
    monitor-exit v2

    .line 553
    return-void

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    .end local v0           #indexOfTask:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decodeByAlbumId(IZ)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "albumId"
    .parameter "notScale"

    .prologue
    const/4 v9, 0x0

    .line 712
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 713
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v10, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v11, p1

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 714
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 715
    const/4 v2, 0x0

    .line 717
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v10, "r"

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 718
    const/4 v6, 0x1

    .line 720
    .local v6, sampleSize:I
    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_0

    .line 721
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 722
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 723
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 724
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v10, 0x1

    .line 725
    .local v4, nextWidth:I
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v10, 0x1

    .line 726
    .local v3, nextHeight:I
    :goto_0
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v10, :cond_0

    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v10, :cond_0

    .line 727
    shl-int/lit8 v6, v6, 0x1

    .line 728
    shr-int/lit8 v4, v4, 0x1

    .line 729
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 733
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_0
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 734
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 735
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 738
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_2

    if-nez p2, :cond_2

    .line 739
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v10, v11, :cond_2

    .line 740
    :cond_1
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 741
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 742
    move-object v0, v7

    .line 753
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 754
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 760
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 747
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 748
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    if-eqz v2, :cond_4

    .line 754
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    move-object v0, v9

    .line 760
    goto :goto_1

    .line 749
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    .line 750
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 753
    if-eqz v2, :cond_4

    .line 754
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 755
    :catch_2
    move-exception v1

    .line 756
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 752
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 753
    if-eqz v2, :cond_5

    .line 754
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 752
    :cond_5
    :goto_4
    throw v9

    .line 755
    :catch_3
    move-exception v1

    .line 756
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 755
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 756
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 755
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v6       #sampleSize:I
    :catch_5
    move-exception v1

    .line 756
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "afd"

    .prologue
    const/4 v7, 0x0

    .line 764
    if-nez p1, :cond_1

    move-object v0, v7

    .line 810
    :cond_0
    :goto_0
    return-object v0

    .line 768
    :cond_1
    const/4 v5, 0x1

    .line 770
    .local v5, sampleSize:I
    :try_start_0
    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_2

    .line 771
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 772
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 773
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 775
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v8, 0x1

    .line 776
    .local v4, nextWidth:I
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v8, 0x1

    .line 777
    .local v3, nextHeight:I
    :goto_1
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v8, :cond_2

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v8, :cond_2

    .line 778
    shl-int/lit8 v5, v5, 0x1

    .line 779
    shr-int/lit8 v4, v4, 0x1

    .line 780
    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 784
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 785
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 786
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 789
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_4

    .line 790
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v8, v9, :cond_4

    .line 791
    :cond_3
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 792
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 793
    move-object v0, v6

    .line 802
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p1, :cond_0

    .line 803
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, e:Ljava/io/IOException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "IO ex catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 799
    .local v2, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "[AsyncImageDecoder]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeByFileDescriptor failed, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    if-eqz p1, :cond_5

    .line 803
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_5
    :goto_2
    move-object v0, v7

    .line 810
    goto/16 :goto_0

    .line 801
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 802
    if-eqz p1, :cond_6

    .line 803
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 801
    :cond_6
    :goto_3
    throw v7

    .line 804
    :catch_2
    move-exception v1

    .line 805
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 806
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 807
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 804
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 805
    .local v1, e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 806
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 807
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 806
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v1

    .line 807
    .restart local v1       #e:Ljava/lang/NullPointerException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 814
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v0, v6

    .line 849
    :cond_1
    :goto_0
    return-object v0

    .line 818
    :cond_2
    const/4 v4, 0x1

    .line 820
    .local v4, sampleSize:I
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_3

    .line 821
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 822
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 823
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 824
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v7, 0x1

    .line 825
    .local v3, nextWidth:I
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v7, 0x1

    .line 826
    .local v2, nextHeight:I
    :goto_1
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v3, v7, :cond_3

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v2, v7, :cond_3

    .line 827
    shl-int/lit8 v4, v4, 0x1

    .line 828
    shr-int/lit8 v3, v3, 0x1

    .line 829
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 833
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    :cond_3
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 834
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 835
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 837
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_1

    .line 838
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v7, v8, :cond_1

    .line 839
    :cond_4
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 840
    .local v5, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    move-object v0, v5

    goto :goto_0

    .line 846
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 847
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "[AsyncImageDecoder]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeBypath failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 849
    goto :goto_0
.end method

.method private decodeByURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "URLPath"

    .prologue
    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, URI:Ljava/net/URL;
    const/4 v3, 0x0

    .line 857
    .local v3, conn:Ljava/net/URLConnection;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 858
    .end local v0           #URI:Ljava/net/URL;
    .local v1, URI:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 859
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 861
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 862
    .local v5, is:Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 863
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 866
    if-eqz v2, :cond_1

    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_1

    .line 867
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v7, v8, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v7, v8, :cond_1

    .line 868
    :cond_0
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v2, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 869
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 870
    move-object v2, v6

    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_1
    move-object v0, v1

    .line 880
    .end local v1           #URI:Ljava/net/URL;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #URI:Ljava/net/URL;
    :goto_0
    return-object v2

    .line 875
    :catch_0
    move-exception v4

    .line 876
    .local v4, e:Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 880
    .end local v4           #e:Ljava/net/MalformedURLException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 877
    :catch_1
    move-exception v4

    .line 878
    .local v4, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 877
    .end local v0           #URI:Ljava/net/URL;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #URI:Ljava/net/URL;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #URI:Ljava/net/URL;
    .restart local v0       #URI:Ljava/net/URL;
    goto :goto_3

    .line 875
    .end local v0           #URI:Ljava/net/URL;
    .restart local v1       #URI:Ljava/net/URL;
    :catch_3
    move-exception v4

    move-object v0, v1

    .end local v1           #URI:Ljava/net/URL;
    .restart local v0       #URI:Ljava/net/URL;
    goto :goto_1
.end method

.method private getPathByAlbumId(I)Ljava/lang/String;
    .locals 11
    .parameter "albumId"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 646
    if-gez p1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-object v3

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 649
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 651
    sget-object v2, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 652
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 654
    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 657
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 658
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 659
    if-eqz v6, :cond_3

    .line 660
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 668
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 669
    const-string v2, "_data"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 670
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 671
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    .line 673
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 670
    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 320
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 321
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 323
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncImageDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 324
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 325
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 326
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;-><init>(Lcom/htc/music/util/AsyncImageDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 327
    return-void
.end method

.method private isTaskExists(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z
    .locals 6
    .parameter "task"

    .prologue
    const/4 v4, 0x0

    .line 567
    if-nez p1, :cond_0

    move v3, v4

    .line 580
    :goto_0
    return v3

    .line 570
    :cond_0
    iget-object v5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, temp:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 573
    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v2, v0

    .line 574
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    const/4 v3, 0x1

    monitor-exit v5

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 572
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 580
    goto :goto_0
.end method

.method private notifyError(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 378
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    .line 383
    :cond_0
    return-void
.end method

.method private removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 677
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-object v5

    .line 679
    :cond_1
    const/4 v3, -0x1

    .line 680
    .local v3, start:I
    const/4 v0, -0x1

    .line 682
    .local v0, end:I
    iget-boolean v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-lt v6, v7, :cond_0

    .line 683
    iget v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 684
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 687
    const/4 v1, -0x1

    .line 688
    .local v1, firstVisible:I
    const/4 v4, 0x0

    .line 689
    .local v4, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 690
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    check-cast v4, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 691
    .restart local v4       #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    if-eqz v4, :cond_3

    .line 692
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v3, v6, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v6, v0, :cond_3

    .line 693
    move v1, v2

    .line 700
    :cond_2
    const/4 v6, -0x1

    if-le v1, v6, :cond_0

    .line 701
    iget-object v5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    goto :goto_0

    .line 697
    :cond_3
    const/4 v4, 0x0

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public varargs add(III[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 473
    if-gez p2, :cond_1

    .line 474
    invoke-direct {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;III[Ljava/lang/Object;)V

    .line 479
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 481
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 497
    if-nez p2, :cond_1

    .line 498
    invoke-direct {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V

    .line 503
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 505
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v7, 0x1

    .line 523
    if-nez p2, :cond_1

    if-gez p3, :cond_1

    .line 524
    invoke-direct {p0, p4}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 529
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 531
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "notScale"
    .parameter "varargs"

    .prologue
    const/4 v7, 0x1

    .line 449
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 450
    :cond_0
    invoke-direct {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 463
    :cond_1
    :goto_0
    return-void

    .line 454
    :cond_2
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;IZ[Ljava/lang/Object;)V

    .line 455
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 457
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 393
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 394
    :cond_0
    invoke-direct {p0, p3}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 399
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 401
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ZILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "bOnlineDecode"
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x4

    .line 418
    if-eqz p1, :cond_3

    .line 419
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 420
    :cond_0
    invoke-direct {p0, p4}, Lcom/htc/music/util/AsyncImageDecoder;->notifyError(I)V

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 425
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 427
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/util/AsyncImageDecoder;->setRecycleOnPause(Z)V

    .line 432
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 435
    .end local v0           #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    :cond_3
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 634
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 636
    monitor-exit v1

    .line 638
    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseDecode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 611
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-ne v0, v2, :cond_0

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "pauseDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iput-boolean v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 587
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 590
    invoke-virtual {p0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 592
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 595
    invoke-virtual {p0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 596
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 598
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 599
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 605
    :cond_1
    return-void
.end method

.method public resumeDecode()V
    .locals 2

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 621
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "resumeDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 623
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 625
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 708
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 709
    return-void
.end method

.method public setMergeImageResource(IIIII)V
    .locals 1
    .parameter "resourceId"
    .parameter "width"
    .parameter "height"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 346
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-ltz p4, :cond_0

    if-gez p5, :cond_1

    .line 347
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_1
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 351
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 352
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 353
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 354
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    goto :goto_0
.end method

.method public setRecycleOnPause(Z)V
    .locals 0
    .parameter "recycleOnPause"

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 335
    return-void
.end method

.method public setReportError(Z)V
    .locals 0
    .parameter "reportError"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z

    .line 331
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 365
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_1

    .line 366
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 371
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 374
    monitor-exit v1

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
