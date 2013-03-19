.class public Lcom/htc/album/modules/collection/SimpleImage;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "SimpleImage.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/modules/collection/SimpleImage;",
        ">;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static BIT_DRM:I = 0x0

.field private static BIT_ORDER:I = 0x0

.field private static BIT_VIDEO:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/modules/collection/SimpleImage;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient mContainer:Lcom/htc/album/modules/collection/Collection;

.field public mDateModified:J

.field public mDegreeRotated:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mIdentifier:Ljava/lang/String;

.field public mIsDrm:Z

.field public mIsVideo:Z

.field public mMediaType:I

.field public mMimeType:Ljava/lang/String;

.field public mRowId:J

.field protected mSortDES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/SimpleImage;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    const/16 v0, 0x10

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    const/16 v0, 0x100

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    new-instance v0, Lcom/htc/album/modules/collection/SimpleImage$1;

    invoke-direct {v0}, Lcom/htc/album/modules/collection/SimpleImage$1;-><init>()V

    sput-object v0, Lcom/htc/album/modules/collection/SimpleImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iput v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    return-void
.end method

.method public constructor <init>(Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iput v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    iput-boolean p2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/album/modules/collection/SimpleImage;)I
    .locals 7

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v3, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v1, :cond_4

    neg-int v0, v0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/SimpleImage;->compareTo(Lcom/htc/album/modules/collection/SimpleImage;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    return-wide v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p4}, Lcom/htc/album/modules/collection/SimpleImage;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    move v1, v2

    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/SimpleImage;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V
    .locals 4

    const/16 v3, 0xe0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iput p5, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iput p6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    const/16 v0, 0xe

    if-eq p6, v0, :cond_0

    if-ne p6, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    const/16 v0, 0x10

    if-eq p6, v0, :cond_1

    if-ne p6, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    iput-wide p7, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    iput-wide p9, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
