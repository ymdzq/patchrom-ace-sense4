.class public Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;
.super Ljava/lang/Object;
.source "GifPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameByFrameData"
.end annotation


# instance fields
.field private mBitmapCach:Landroid/graphics/Bitmap;

.field mContentResolver:Landroid/content/ContentResolver;

.field mFileData:[B

.field private mFilePath:Ljava/lang/String;

.field private mFrameBuffer:[I

.field private mFrameCount:I

.field private mIs:Ljava/io/InputStream;

.field mParser:Landroid/webkit/GIFImageParser;

.field private mSrcType:I

.field private mUri:Landroid/net/Uri;

.field private mbInit:Z

.field private mnDurations:[I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iput v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iput v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mIs:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    return-void
.end method

.method private CreateParser()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getFrameAllData(Landroid/webkit/GIFImageParser;)Z
    .locals 8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameRectAtIndex(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameBufferAtIndex(I)[I

    move-result-object v0

    if-nez v1, :cond_1

    move-object v3, v4

    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v6

    long-to-int v6, v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getFrameAllData2(Landroid/webkit/GIFImageParser;)Z
    .locals 5

    const/4 v4, 0x1

    new-array v0, v4, [Landroid/graphics/Bitmap;

    new-array v1, v4, [I

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->decode(I[Landroid/graphics/Bitmap;[I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public FreeResource()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v0}, Landroid/webkit/GIFImageParser;->Release()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    :cond_1
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameBuffer:[I

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    return-void
.end method

.method GetDuration(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    aget v0, v0, p1

    return v0
.end method

.method GetFileData(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v4, v3, [B

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileError"

    invoke-static {v4, v5, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v4

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method GetInputStreamData()Z
    .locals 6

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mIs:Ljava/io/InputStream;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputStreamErr"

    invoke-static {v4, v5, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v4

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public LoadData(I)Z
    .locals 3

    iget v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadDataFromFile(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadDataFromUri(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadDataFromInputStream(I)Z

    move-result v0

    goto :goto_0
.end method

.method public LoadDataFromFile(I)Z
    .locals 8

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->CreateParser()V

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->Release()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-ne p1, v5, :cond_1

    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "GIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count frame takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getFrameAllData(Landroid/webkit/GIFImageParser;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_1
.end method

.method public LoadDataFromInputStream(I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mIs:Ljava/io/InputStream;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Reload"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->GetInputStreamData()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Landroid/webkit/GIFImageParser;

    invoke-direct {v4}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    invoke-virtual {v4, v5}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v3}, Landroid/webkit/GIFImageParser;->Release()V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    if-ne p1, v3, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4, v1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    :goto_2
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getFrameAllData(Landroid/webkit/GIFImageParser;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_2
.end method

.method public LoadDataFromUri(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Reload"

    invoke-static {v3, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v5, v6}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->GetFileData(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v5, Landroid/webkit/GIFImageParser;

    invoke-direct {v5}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    invoke-virtual {v5, v6}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v5}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    iget v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    if-nez v5, :cond_3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->Release()V

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    if-ne p1, v4, :cond_4

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    :goto_1
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x0

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getFrameAllData2(Landroid/webkit/GIFImageParser;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method 2 Time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method decode(I[Landroid/graphics/Bitmap;[I)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not Ready"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Out of Index"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v1}, Landroid/webkit/GIFImageParser;->nativeAllocFrameBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Landroid/webkit/GIFImageParser;->nativeGetFrameBitmap(ILandroid/graphics/Bitmap;)I

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v1, p1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, p3, v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    aput-object v1, p2, v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    aget v0, p3, v0

    aput v0, v1, p1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    return v0
.end method

.method getFrameRect(I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v0, p1}, Landroid/webkit/GIFImageParser;->frameRectAtIndex(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method
