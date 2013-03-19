.class public Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
.super Ljava/lang/Object;
.source "DLNAPageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_AT_BOT:I = 0x2

.field public static final DIRECTION_AT_TOP:I = -0x2

.field public static final DIRECTION_DOWN:I = 0x1

.field public static final DIRECTION_UNKNOWN:I = 0x0

.field public static final DIRECTION_UP:I = -0x1


# instance fields
.field private mBgIcon:I

.field private mDirection:I

.field private mIndexBot:J

.field private mIndexMid:J

.field private mIndexTop:J

.field private mIsIntermediate:Z

.field private mSelected:Z

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIsIntermediate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mText:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mBgIcon:I

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mSelected:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIsIntermediate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mText:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mBgIcon:I

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mSelected:Z

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackground()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mBgIcon:I

    return v0
.end method

.method public getBottomIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    return-wide v0
.end method

.method public getBrowseBound()J
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    if-ne v2, v3, :cond_1

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    if-ne v2, v3, :cond_0

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    goto :goto_0
.end method

.method public getBrowseStart()J
    .locals 2

    const-wide/16 v0, 0x0

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    return-wide v0
.end method

.method public getCenterText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentBrowseTop()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    iget-wide v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    goto :goto_0
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

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntermediate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIsIntermediate:Z

    return v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaQuality()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMidIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTopIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    return-wide v0
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

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    return-void
.end method

.method public setBackground(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mBgIcon:I

    return-void
.end method

.method public setBottomIndex(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mText:Ljava/lang/String;

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0

    return-void
.end method

.method public setIntermediate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIsIntermediate:Z

    return-void
.end method

.method public setMidIndex(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mSelected:Z

    return-void
.end method

.method public setTopIndex(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
