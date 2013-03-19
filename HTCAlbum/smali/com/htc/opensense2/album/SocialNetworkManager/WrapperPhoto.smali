.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
.super Ljava/lang/Object;
.source "WrapperPhoto.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataOnline;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCommentCount:I

.field private mDescription:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mIndex:I

.field private mIsCorrupt:Z

.field private mIsInDetail:Z

.field private mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field private mName:Ljava/lang/String;

.field private mPhotoHeight:I

.field private mPhotoLink:Ljava/lang/String;

.field private mPhotoTime:J

.field private mPhotoURL:Ljava/lang/String;

.field private mPhotoURLHeader:Ljava/lang/String;

.field private mPhotoURLThumb:Ljava/lang/String;

.field private mPhotoURLThumbHeader:Ljava/lang/String;

.field private mPhotoWidth:I

.field private mQuality:I

.field private mSelected:Z

.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateID:I

.field private mType:I

.field private mUri:Landroid/net/Uri;

.field private mUriThumb:Landroid/net/Uri;

.field private mVideoUri:Ljava/lang/String;

.field private mszDateTime:Ljava/lang/String;

.field private mszMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/MediumOp;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Medium;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-static {p1, v0, v1, v2}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    if-eq v2, v1, :cond_0

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string v1, "content"

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string v1, "content"

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getDisplayImageHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

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
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    :cond_0
    return v1
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataOnline;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaQuality()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoURLHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoURLThumbHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Medium;
    .locals 3

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setThumbnailUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setWebLink(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Medium;->setCreateTime(J)V

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setType(I)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSourceOp()Lcom/htc/opensense/social/MediumOp;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initTags()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    return-void
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

.method public isInDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

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

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDetailed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0

    return-void
.end method

.method public setFilePath(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    return-void
.end method

.method public setMediaQuality(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPhotoFilePath(Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_0
.end method

.method public setPhotoThumbnailFilePath(Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    if-nez v1, :cond_2

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    :goto_1
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_0
.end method

.method public setPhotoURLHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    return-void
.end method

.method public setPhotoURLThumbHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Medium;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/util/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/util/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getWebLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getType()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl_hq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl_hq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl_hq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setTemplateID(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
