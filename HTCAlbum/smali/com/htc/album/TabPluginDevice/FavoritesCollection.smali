.class public Lcom/htc/album/TabPluginDevice/FavoritesCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "FavoritesCollection.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final HAS_PEN:Z = false

.field static final favoriteProjection:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/TabPluginDevice/FavoritesCollection;->favoriteProjection:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportPenPaint()Z

    move-result v0

    sput-boolean v0, Lcom/htc/album/TabPluginDevice/FavoritesCollection;->HAS_PEN:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    const-string v2, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDeleteIBT(Landroid/content/ContentResolver;I)V
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0, p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/FavoritesCollection;->favoriteProjection:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v0, "favorite"

    and-int/lit8 v2, v8, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v1, v9, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    goto :goto_0
.end method
