.class public Lcom/htc/album/modules/collection/Collection;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "Collection.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Lcom/htc/album/helper/IFilterFolderBucketIds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/collection/Collection$QueueComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/modules/collection/Collection;",
        ">;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Lcom/htc/album/helper/IFilterFolderBucketIds;"
    }
.end annotation


# static fields
.field public static final BUCKET_ID_OTHERS:Ljava/lang/String; = null

.field protected static final CACHE_ROOT:Ljava/lang/String; = null

.field protected static CACHE_SETS:[I = null

.field public static final COLLECTIONS_PROJECTION:[Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/modules/collection/Collection;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CACHE_VERSION:I = 0x1

.field protected static final FILE_OP_TAG:Ljava/lang/String; = "[Collection][deleteCache]"

.field public static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final LOG_TAG:Ljava/lang/String; = "Collection"

.field protected static final QUEUE_SIZE:I = 0x4

.field public static final SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mBucketId:Ljava/lang/String;

.field protected mContainsMediaTypes:I

.field protected transient mContext:Landroid/content/Context;

.field protected mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

.field protected mDisplayName:Ljava/lang/String;

.field protected mDrmImageCnt:I

.field protected mDrmVideoCnt:I

.field private mEnableFilterFolderBucketIds:Z

.field private mEnableImageListCache:Z

.field private mEnablePartialLoadImageList:Z

.field protected mFilter:Ljava/lang/String;

.field private mFilter4FolderBucketIds:Ljava/lang/String;

.field protected mImageCnt:I

.field protected mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field protected mIsVisible:I

.field protected mPhotoCnt:I

.field protected transient mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/htc/album/modules/collection/SimpleImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowLatest:Z

.field protected mSortOrder:I

.field protected mSupportedMediaTypes:I

.field protected mType:Ljava/lang/String;

.field protected mVideoCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->COLLECTIONS_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_EXTERNAL_STORAGE:Ljava/lang/String;

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CACHE_ROOT:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CACHE_SETS:[I

    new-instance v0, Lcom/htc/album/modules/collection/Collection$1;

    invoke-direct {v0}, Lcom/htc/album/modules/collection/Collection$1;-><init>()V

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-virtual {p0, p1, p4}, Lcom/htc/album/modules/collection/Collection;->setProperties(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/album/modules/collection/Collection$QueueComparator;

    iget-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v2, v3}, Lcom/htc/album/modules/collection/Collection$QueueComparator;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/Collection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static final getSavedFolderType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folder_type"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelDeleting()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->cancelDeleting()V

    :cond_0
    return-void
.end method

.method public clone(Lcom/htc/album/modules/collection/Collection;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/Collection;->setCoverImage(Lcom/htc/album/modules/collection/SimpleImage;)V

    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    iget-boolean v0, p1, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/album/modules/collection/Collection;)I
    .locals 2

    instance-of v0, p1, Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/Collection;->compareTo(Lcom/htc/album/modules/collection/Collection;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    if-ne v5, v2, :cond_2

    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "key_count_image"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-ne v5, v2, :cond_0

    const-string v2, "Collection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doLoadData] IPartialLoadListener.KEY_COUNT_IMAGE has been use, we would overwrite it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key_count_image"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "key_count_video"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-ne v5, v2, :cond_1

    const-string v2, "Collection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doLoadData] IPartialLoadListener.KEY_COUNT_IMAGE has been use, we would overwrite it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key_count_video"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "key_count_image"

    iget v3, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_count_video"

    iget v3, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/htc/album/modules/collection/Collection;->makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    if-ne v5, v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_3
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_4
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v1

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_0
.end method

.method public final enableDataCache(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_0
    return-void
.end method

.method public enableFilter4FolderBucketIds(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    return-void
.end method

.method public equals(Lcom/htc/album/modules/collection/Collection;)Z
    .locals 2

    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v4, v4, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    invoke-static {v2, v3, v4, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getContainedMediaTypes()I
    .locals 1

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmImagePhotoCount()I
    .locals 3

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    :cond_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    return v1
.end method

.method public getDrmVideoPhotoCount()I
    .locals 3

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmVideoCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    :cond_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    return v1
.end method

.method public getEnablePartialLoadImageList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method protected getFolderRecoveryParam()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method public getImagePhotoCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    return v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhotoCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    return v0
.end method

.method protected getQueryOrderBy(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQuerySortOrder(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryParams()Landroid/content/Intent;
    .locals 9

    const/16 v8, 0x10

    const/4 v5, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/album/modules/collection/Collection;->getQueryProjection(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/modules/collection/Collection;->setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/htc/album/modules/collection/Collection;->getQueryProjection(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move-object v0, p0

    move v5, v8

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/modules/collection/Collection;->setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method protected getQueryProjection(I)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getQueryUri(I)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQueryWhere(IZ)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryWhere(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "Collection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "Collection"

    const-string v2, "[getQueryWhere] appendDefault = false not define."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryWhereParams(IZ)[Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryArgs(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Collection"

    const-string v1, "[getQueryWhereParams] appendDefault = false not define."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    return v0
.end method

.method public getSupportedMediaTypes()I
    .locals 1

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    return v0
.end method

.method public getVideoPhotoCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    return v0
.end method

.method public isFilteredFolderBucketId(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isManageable()Z
    .locals 1

    sget-boolean v0, Lcom/htc/album/helper/FileOperationManager;->ENABLE_FILEOPERATION:Z

    return v0
.end method

.method public isVisible()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final loadFromPerference()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/Collection;->onLoadFromPreference(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 8

    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    iget v7, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public onDeleteIBT(Landroid/content/ContentResolver;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2, p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFolderClicked(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLoadFromPreference(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "folder_type"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    const-string v0, "key_bucket_id"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    const-string v0, "key_folder_name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method protected onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;
    .locals 11

    new-instance v0, Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/collection/SimpleImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    return-object v0
.end method

.method protected onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    const-string v0, "folder_type"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "key_bucket_id"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "key_folder_name"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public prepareFilter4FolderBucketIds(Landroid/content/Context;)V
    .locals 11

    iget-boolean v8, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    if-eqz v8, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getLocalFolderFilterCache(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-le v5, v6, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez v0, :cond_2

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bucket_id"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " NOT IN (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v0, 0x1

    const-string v8, "Collection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Collection][prepareFilter4FolderBucketIds]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v8, "\',\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const-string v8, "\') "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    :cond_5
    const-string v8, "Collection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Collection][prepareFilter4FolderBucketIds]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p4}, Lcom/htc/album/modules/collection/Collection;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez p1, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v7, :cond_0

    new-instance v7, Lcom/htc/album/TabPluginDevice/FolderImage;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    :cond_0
    iget-object v8, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, p1, p2, p3, v7}, Lcom/htc/album/modules/collection/SimpleImage;->readFrom(ZIILjava/lang/String;)V

    move v2, v3

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/album/modules/collection/Collection;->removeListObjHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/PriorityQueue;

    const/4 v8, 0x4

    new-instance v9, Lcom/htc/album/modules/collection/Collection$QueueComparator;

    iget-boolean v10, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v9, v10}, Lcom/htc/album/modules/collection/Collection$QueueComparator;-><init>(Z)V

    invoke-direct {v7, v8, v9}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    const/4 v7, 0x1

    invoke-direct {v0, p0, v7}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    invoke-virtual {v0, p1, p2, p3, v6}, Lcom/htc/album/TabPluginDevice/FolderImage;->readFrom(ZIILjava/lang/String;)V

    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v7, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    :cond_4
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 12

    const/4 v11, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v11, :cond_1

    :goto_0
    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    :cond_0
    return-void

    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    return-void
.end method

.method public final declared-synchronized releaseListDataCache()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Collection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[releaseListDataCache] mImageListCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadData()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->startRequery()Z

    :cond_0
    return-void
.end method

.method public final saveToPerference()V
    .locals 3

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/Collection;->onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCoverImage(Lcom/htc/album/modules/collection/SimpleImage;)V
    .locals 11

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    iget-wide v3, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iget v6, p1, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    iget-wide v7, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    iget-wide v9, p1, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    goto :goto_0
.end method

.method public setEnablePartialLoadImageList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x11

    const/16 v3, 0xff

    const/4 v2, 0x1

    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a005f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.htc.HTCAlbum.SNAPBOOTH"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0064

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    :cond_1
    const-string v0, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a0068

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    :cond_2
    const-string v0, "com.htc.HTCAlbum.MY_INKS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a0065

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    :cond_3
    const-string v0, "com.htc.HTCAlbum.SCRIBBLES"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a0066

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    :cond_4
    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0a0063

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    :cond_5
    const-string v0, "com.htc.HTCAlbum.ALL_PHOTOS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0a0060

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    :cond_6
    const-string v0, "com.htc.HTCAlbum.ALL_VIDEOS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0a0061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    const/16 v0, 0xf0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    :cond_7
    const-string v0, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0a0062

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    :cond_8
    const-string v0, "com.htc.HTCAlbum.ALL_3DS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0a0067

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0a0056

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    :goto_1
    iput v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    :cond_a
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->getFolderRecoveryParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p5}, Lcom/htc/album/modules/collection/Collection;->getQueryOrderBy(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {p0, p5, v5}, Lcom/htc/album/modules/collection/Collection;->getQueryWhere(IZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, p5, v5}, Lcom/htc/album/modules/collection/Collection;->getQueryWhereParams(IZ)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p5}, Lcom/htc/album/modules/collection/Collection;->getQueryUri(I)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "Collection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folderRecoveryParam = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "folder_type"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    if-ne p5, v5, :cond_2

    const-string v5, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "image_uri"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "image_projection"

    invoke-virtual {p1, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "image_where"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "image_args"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "image_sort_order"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorageUri()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.SCRIBBLES"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.MY_INKS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "image_uri_phone"

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v5, 0x10

    if-ne p5, v5, :cond_1

    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "video_uri"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "video_projection"

    invoke-virtual {p1, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "video_where"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "video_args"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "video_sort_order"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setSortOrder(I)V
    .locals 2

    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    :cond_0
    return-void
.end method

.method public setSupportedMediaTypes(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    goto :goto_0
.end method

.method public showLatest()Z
    .locals 2

    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    return v0
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/SimpleImage;->toFormatedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {v4}, Lcom/htc/album/modules/collection/SimpleImage;->toFormatedString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/album/modules/collection/Collection;->capListObjHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/collection/Collection;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toggleVisibility()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    goto :goto_0
.end method

.method public updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V
    .locals 11

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v1, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p5

    move-wide v3, p3

    move/from16 v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_4

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p5

    move-wide v3, p3

    move/from16 v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    sparse-switch p1, :sswitch_data_0

    :goto_2
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v1, v1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v1, p3, v1

    if-ltz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v1, v1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    move-object v1, p2

    move-object/from16 v2, p5

    move-wide v3, p3

    move/from16 v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/collection/SimpleImage;

    move-object v1, p2

    move-object/from16 v2, p5

    move-wide v3, p3

    move/from16 v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    goto :goto_2

    :sswitch_1
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    goto :goto_2

    :sswitch_2
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    goto :goto_2

    :sswitch_3
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0xe0 -> :sswitch_3
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
