.class Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SeekBarCPUPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState;
    .locals 1

    new-instance v0, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState$1;->newArray(I)[Lcom/m0narx/tweaks/widgets/SeekBarCPUPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
