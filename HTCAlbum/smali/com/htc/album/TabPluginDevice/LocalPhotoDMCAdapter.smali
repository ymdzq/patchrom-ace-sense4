.class public Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
.source "LocalPhotoDMCAdapter.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalPhotoDMCAdapter"


# instance fields
.field protected mPhotoIDs:[I

.field protected mStartUpIndex:I

.field protected mStartUpPhotoID:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mPhotoIDs:[I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpIndex:I

    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalPhotoDMCAdapter"

    return-object v0
.end method

.method public getPhotoIDs()[I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mPhotoIDs:[I

    return-object v0
.end method

.method public getStartupIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpIndex:I

    return v0
.end method

.method public getStartupPhotoID()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 8

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    new-array v1, v5, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    invoke-interface {v3, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v6

    long-to-int v6, v6

    aput v6, v1, v0

    iget v6, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    aget v6, v1, v0

    iget v7, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    if-ne v6, v7, :cond_0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mPhotoIDs:[I

    :cond_2
    return-object v4
.end method

.method public setStartupPhotoID(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->mStartUpPhotoID:I

    return-void
.end method
