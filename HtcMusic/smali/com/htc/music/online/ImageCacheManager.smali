.class public Lcom/htc/music/online/ImageCacheManager;
.super Ljava/lang/Object;
.source "ImageCacheManager.java"


# static fields
.field private static final MAX_IMAGENUMBER:I = 0x8

.field public static imageCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/htc/music/online/ImageCacheManager;->imageCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCacheMap()V
    .locals 4

    .prologue
    .line 31
    sget-object v2, Lcom/htc/music/online/ImageCacheManager;->imageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 32
    sget-object v2, Lcom/htc/music/online/ImageCacheManager;->imageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    sget-object v2, Lcom/htc/music/online/ImageCacheManager;->imageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 34
    .local v1, tempbitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    const/4 v1, 0x0

    .line 38
    :cond_0
    sget-object v2, Lcom/htc/music/online/ImageCacheManager;->imageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    return-void
.end method

.method public static decodeByURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "URLPath"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, URI:Ljava/net/URL;
    const/4 v3, 0x0

    .line 54
    .local v3, conn:Ljava/net/URLConnection;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    .end local v0           #URI:Ljava/net/URL;
    .local v1, URI:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 57
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 58
    .local v5, is:Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 59
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x0

    .line 71
    .end local v1           #URI:Ljava/net/URL;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #URI:Ljava/net/URL;
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v4

    .line 62
    .local v4, e:Ljava/net/MalformedURLException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 68
    .end local v4           #e:Ljava/net/MalformedURLException;
    :goto_2
    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x0

    .line 71
    const/4 v2, 0x0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v4

    .line 64
    .local v4, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 68
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x0

    .line 68
    throw v6

    .line 65
    :catch_2
    move-exception v4

    .line 66
    .local v4, e:Ljava/lang/Exception;
    :goto_5
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 68
    .end local v0           #URI:Ljava/net/URL;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #URI:Ljava/net/URL;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #URI:Ljava/net/URL;
    .restart local v0       #URI:Ljava/net/URL;
    goto :goto_4

    .line 65
    .end local v0           #URI:Ljava/net/URL;
    .restart local v1       #URI:Ljava/net/URL;
    :catch_3
    move-exception v4

    move-object v0, v1

    .end local v1           #URI:Ljava/net/URL;
    .restart local v0       #URI:Ljava/net/URL;
    goto :goto_5

    .line 63
    .end local v0           #URI:Ljava/net/URL;
    .restart local v1       #URI:Ljava/net/URL;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1           #URI:Ljava/net/URL;
    .restart local v0       #URI:Ljava/net/URL;
    goto :goto_3

    .line 61
    .end local v0           #URI:Ljava/net/URL;
    .restart local v1       #URI:Ljava/net/URL;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1           #URI:Ljava/net/URL;
    .restart local v0       #URI:Ljava/net/URL;
    goto :goto_1
.end method

.method public static getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "URLPath"

    .prologue
    .line 43
    sget-object v1, Lcom/htc/music/online/ImageCacheManager;->imageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 44
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImageFromCacheOrURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "URLPath"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/htc/music/online/ImageCacheManager;->getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 20
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/htc/music/online/ImageCacheManager;->decodeByURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-static {}, Lcom/htc/music/online/ImageCacheManager;->checkCacheMap()V

    .line 24
    sget-object v1, Lcom/htc/music/online/ImageCacheManager;->imageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1
    return-object v0
.end method
