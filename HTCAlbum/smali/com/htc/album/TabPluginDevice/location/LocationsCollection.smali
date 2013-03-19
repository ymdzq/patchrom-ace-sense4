.class public Lcom/htc/album/TabPluginDevice/location/LocationsCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "LocationsCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/location/LocationsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExclusiveRegions:[D

.field private mInclusiveRegions:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LocationsCollection"

    sput-object v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/location/LocationsCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[D[D)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "com.htc.HTCAlbum.MY_MAPVIEWS"

    const-string v1, "com.htc.HTCAlbum.MY_MAPVIEWS"

    const-string v2, "com.htc.HTCAlbum.MY_MAPVIEWS"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method protected static ArrayDataToString([D)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_1

    const-string v3, "-1"

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    :try_start_0
    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, p0, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v4, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetArrayData():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static GetArrayData(Ljava/lang/String;Landroid/content/SharedPreferences;)[D
    .locals 9

    const/4 v6, 0x0

    const-string v7, ""

    invoke-interface {p1, p0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v7, ""

    if-eq v5, v7, :cond_0

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "-1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move-object v4, v6

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    move-object v4, v6

    goto :goto_0

    :cond_3
    new-array v4, v3, [D

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v6, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetArrayData():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clone(Lcom/htc/album/modules/collection/Collection;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    move-object v0, p1

    check-cast v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    array-length v1, v2

    new-array v2, v1, [D

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    array-length v1, v2

    new-array v2, v1, [D

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public isManageable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 9

    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    const-string v2, "com.htc.HTCAlbum.MY_MAPVIEWS"

    const-string v3, "com.htc.HTCAlbum.MY_MAPVIEWS"

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v8}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;[D[D)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public onFolderClicked(Landroid/app/Activity;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.LAUNCH_LOCATION_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected onLoadFromPreference(Landroid/content/SharedPreferences;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onLoadFromPreference(Landroid/content/SharedPreferences;)V

    const-string v0, "LocationViewRangeDouble"

    invoke-static {v0, p1}, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->GetArrayData(Ljava/lang/String;Landroid/content/SharedPreferences;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    const-string v0, "LocationExclusiveRanges"

    invoke-static {v0, p1}, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->GetArrayData(Ljava/lang/String;Landroid/content/SharedPreferences;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    return-void
.end method

.method protected onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->ArrayDataToString([D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->ArrayDataToString([D)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationViewRangeDouble"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "LocationExclusiveRanges"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->readFromParcel(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    :cond_1
    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0a01a3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    array-length v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mInclusiveRegions:[D

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    array-length v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;->mExclusiveRegions:[D

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_1
.end method
