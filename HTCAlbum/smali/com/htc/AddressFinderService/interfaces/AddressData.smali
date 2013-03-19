.class public Lcom/htc/AddressFinderService/interfaces/AddressData;
.super Ljava/lang/Object;
.source "AddressData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/AddressFinderService/interfaces/AddressData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/AddressFinderService/interfaces/AddressData$1;

    invoke-direct {v0}, Lcom/htc/AddressFinderService/interfaces/AddressData$1;-><init>()V

    sput-object v0, Lcom/htc/AddressFinderService/interfaces/AddressData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    iput-object v2, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    iput-object v2, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mTime:J

    invoke-virtual {p0, p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/AddressFinderService/interfaces/AddressData;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {p0, p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->compareTo(Lcom/htc/AddressFinderService/interfaces/AddressData;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mTime:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
