.class public Lcom/htc/album/addons/SingleCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "SingleCollection.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mImageUri:Landroid/net/Uri;

.field mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "com.htc.HTCAlbum.SINGLE"

    const-string v1, "com.htc.HTCAlbum.SINGLE"

    const-string v2, "com.htc.HTCAlbum.SINGLE"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/album/addons/SingleCollection;->mImageUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/htc/album/addons/SingleCollection;->mMimeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/addons/SingleCollection;->mImageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/htc/album/addons/SingleCollection;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 8

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/album/addons/SingleCollection;->mImageUri:Landroid/net/Uri;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    if-eqz v6, :cond_0

    instance-of v0, v6, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v0, :cond_0

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    iget-object v0, p0, Lcom/htc/album/addons/SingleCollection;->mMimeType:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setMimeType(Ljava/lang/String;)V

    :cond_0
    return-object v7
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    return-void
.end method
