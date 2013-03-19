.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
.super Ljava/lang/Object;
.source "WrapperAlbum.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCount:I

.field private mCover:Ljava/lang/String;

.field private mCoverUrlHeader:Ljava/lang/String;

.field private mDateModified:J

.field private mDateTime:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mIndex:I

.field private mIsCorrupt:Z

.field private mName:Ljava/lang/String;

.field private mPID:Ljava/lang/String;

.field private mSelected:Z

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

.field private mSize:J

.field private mSubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation
.end field

.field private mSzSeparatorName:Ljava/lang/String;

.field private mTime:J

.field private mszDateTime:Ljava/lang/String;

.field private mszWebLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/AlbumOp;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/AlbumOp;->getData()Lcom/htc/opensense/social/data/Album;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Album;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public fileCorrupted()V
    .locals 0

    return-void
.end method

.method public getBottomText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    return v0
.end method

.method public getCoverURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-static {p1, v0, v1}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDateModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Album;
    .locals 3

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setCoverUrl(Ljava/lang/String;)V

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setCount(I)V

    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Album;->setCreateTime(J)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setWebLink(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    return-void
.end method

.method public setCoverURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrlHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 11

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-direct {v0, v2, v5}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    const-wide/16 v9, -0x1

    move v6, v5

    move-wide v7, v3

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/TabPluginDevice/FolderImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Album;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getWebLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
