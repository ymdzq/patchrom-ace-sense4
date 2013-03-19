.class public Lcom/htc/album/TagUtils/TagInfo;
.super Ljava/lang/Object;
.source "TagInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mH:F

.field public transient mHost:Landroid/view/View;

.field public mW:F

.field public mX:F

.field public mY:F

.field public mnRefID:I

.field public mszTagID:Ljava/lang/String;

.field public mszTagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/album/TagUtils/TagInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TagUtils/TagInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TagUtils/TagInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    invoke-virtual {p0, p1}, Lcom/htc/album/TagUtils/TagInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iput v2, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    iput p3, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iput p4, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    return-void
.end method

.method public setHost(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagInfo;->mHost:Landroid/view/View;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mW:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mH:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/album/TagUtils/TagInfo;->mnRefID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
