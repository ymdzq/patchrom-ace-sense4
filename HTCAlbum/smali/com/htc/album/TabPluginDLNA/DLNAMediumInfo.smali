.class public Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
.super Ljava/lang/Object;
.source "DLNAMediumInfo.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public mID:Ljava/lang/String;

.field public mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field public mIndex:I

.field public mIndexID:J

.field public mIsCorrupt:Z

.field public mIsThumbOnly:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field public mName:Ljava/lang/String;

.field private mQuality:I

.field private mSelected:Z

.field public mType:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mUriThumb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mSelected:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mSelected:Z

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I
    .locals 2

    instance-of v0, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

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

    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->compareTo(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackground()I
    .locals 1

    const v0, 0x7f020003

    return v0
.end method

.method public getCenterText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

.method public getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAMediumInfo][getMediaParcelFileDescriptor]: thumb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_4
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1
.end method

.method public getDisplayImageResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][DLNAMediumInfo][getDisplayImageUri]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaQuality()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    return v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThumbnailUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    const-string v1, "4"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    return-void
.end method

.method public setDispalyImageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    iput p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    return-void
.end method

.method public setDisplayImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    return-void
.end method

.method public setMediaQuality(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    return-void
.end method

.method public setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mSelected:Z

    return-void
.end method

.method public setThumbnailOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
