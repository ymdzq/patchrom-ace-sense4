.class Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/htc/music/MediaPlaybackService$IMediaChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineMediaChooser"
.end annotation


# instance fields
.field private final mOnlineCursorCols:[Ljava/lang/String;

.field private originalurl:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;

.field private trasferfedURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 3
    .parameter

    .prologue
    .line 10178
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10179
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->trasferfedURL:Ljava/lang/String;

    .line 10180
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->originalurl:Ljava/lang/String;

    .line 10181
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "song_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "displayname"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->mOnlineCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12300(Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10178
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->getIsOnlineList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16502(Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10178
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->originalurl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16600(Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10178
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->trasferfedURL()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10178
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->trasferfedURL:Ljava/lang/String;

    return-object v0
.end method

.method private getIsOnlineList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10483
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 10484
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/MusicArrayList;->getIsOnlineList()Ljava/util/List;

    move-result-object v0

    .line 10486
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method private hasInternet()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 10443
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 10445
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 10447
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10448
    :cond_0
    const/4 v2, 0x0

    .line 10454
    :cond_1
    :goto_0
    return v2

    .line 10451
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method private trasferfedURL()Z
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 10374
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->originalurl:Ljava/lang/String;

    .line 10375
    .local v5, url:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->hasInternet()Z

    move-result v7

    if-nez v7, :cond_1

    .line 10376
    :cond_0
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "url is null or url is  error in trasferfedURL"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10437
    :goto_0
    return v6

    .line 10380
    :cond_1
    const/4 v2, 0x0

    .line 10383
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_0
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "[trasferfedURL] before get http"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10384
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 10385
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "[trasferfedURL] after get http, before httpResponse"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10386
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v7, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 10387
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "[trasferfedURL] after httpResponse"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 10398
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    const/4 v1, 0x0

    .line 10400
    .restart local v1       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v4, ""

    .line 10401
    .local v4, result:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 10404
    :try_start_1
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "[trasferfedURL] before get result"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10405
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 10406
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "[trasferfedURL] after get result"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 10417
    :goto_2
    const/4 v2, 0x0

    .line 10419
    if-eqz v4, :cond_2

    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    const-string v7, "mp3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 10420
    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 10421
    const-string v7, "mp3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 10423
    :cond_2
    const-string v7, "-101"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10424
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$16400(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 10425
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$16400(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 10426
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$16400(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10427
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "Service not available in your region"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10388
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 10389
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientProtocolException error in trasferfedURL:  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10390
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 10398
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v6

    const/4 v1, 0x0

    .restart local v1       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    throw v6

    .line 10391
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v0

    .line 10392
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException error in trasferfedURL:  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10393
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 10394
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 10395
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trasferfedURL error:  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 10407
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #result:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 10408
    .local v0, e:Lorg/apache/http/ParseException;
    :try_start_4
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ParseException error in trasferfedURL:  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10409
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 10417
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catchall_1
    move-exception v6

    const/4 v2, 0x0

    throw v6

    .line 10410
    :catch_4
    move-exception v0

    .line 10411
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException error in trasferfedURL:  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10412
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 10413
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 10414
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trasferfedURL error:  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10415
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 10431
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v7, "URLIn trasferfedURL : "

    invoke-static {v7, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10432
    if-eqz v4, :cond_4

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 10433
    :cond_4
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "result is null or result is  empty in trasferfedURL"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10436
    :cond_5
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->trasferfedURL:Ljava/lang/String;

    .line 10437
    const/4 v6, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addRecentAlbumList()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 10493
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$5400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10523
    :goto_0
    return-void

    .line 10495
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v4

    .line 10496
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 10497
    .local v0, currAlbumId:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/htc/music/online/MusicArrayList;->indexOf(Ljava/lang/Object;Z)I

    move-result v2

    .line 10498
    .local v2, indexOfAlbumId:I
    if-nez v2, :cond_1

    .line 10499
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "current album is recently album"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10500
    monitor-exit v4

    goto :goto_0

    .line 10522
    .end local v0           #currAlbumId:I
    .end local v2           #indexOfAlbumId:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 10502
    .restart local v0       #currAlbumId:I
    .restart local v2       #indexOfAlbumId:I
    :cond_1
    :try_start_1
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "addRecentPlayList"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10504
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 10505
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/music/online/MusicArrayList;->remove(I)Ljava/lang/Object;

    .line 10508
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/music/online/MusicArrayList;->addOnline(ILjava/lang/Object;Z)V

    .line 10510
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v3

    if-le v3, v8, :cond_3

    .line 10511
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/htc/music/online/MusicArrayList;->remove(I)Ljava/lang/Object;

    .line 10514
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v3, :cond_4

    .line 10515
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "Music"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3, v5}, Lcom/htc/music/MediaPlaybackService;->access$1402(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 10517
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 10518
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_5

    .line 10519
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    #calls: Lcom/htc/music/MediaPlaybackService;->saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V
    invoke-static {v3, v5}, Lcom/htc/music/MediaPlaybackService;->access$16100(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences$Editor;)V

    .line 10522
    :goto_1
    monitor-exit v4

    goto/16 :goto_0

    .line 10521
    :cond_5
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "Save preference editor is null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getAlbumArtPathFromDB(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 10595
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->getAlbumArtPathFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtPathFromDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 10347
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_art"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 10351
    .local v2, mOnlineAlbum:[Ljava/lang/String;
    const-string v6, ""

    .line 10352
    .local v6, artpath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    sget-object v1, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 10355
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 10356
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10358
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    .line 10359
    .local v7, colCount:I
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 10360
    .local v9, position:I
    if-lez v7, :cond_0

    if-gez v9, :cond_2

    .line 10361
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCurrent: cols count = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", position = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10362
    if-eqz v8, :cond_1

    .line 10363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 10364
    const/4 v8, 0x0

    .line 10370
    .end local v7           #colCount:I
    .end local v9           #position:I
    :cond_1
    :goto_0
    return-object v4

    .line 10368
    .restart local v7       #colCount:I
    .restart local v9       #position:I
    :cond_2
    const-string v0, "album_art"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .end local v7           #colCount:I
    .end local v9           #position:I
    :cond_3
    move-object v4, v6

    .line 10370
    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 10197
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mCurrentBuff:I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    return v0
.end method

.method public getCursorForArtPath(I)Landroid/database/Cursor;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 10575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10577
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    sget-object v1, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 10580
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 10581
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v4

    .line 10584
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    return-object v6
.end method

.method public getRecentAlbumId()[I
    .locals 13

    .prologue
    const/16 v12, 0x8

    .line 10526
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v11

    .line 10527
    const/4 v9, 0x0

    .line 10528
    .local v9, recentAlbumId:[I
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 10529
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v0

    new-array v9, v0, [I

    .line 10530
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 10531
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/htc/music/online/MusicArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v9, v8

    .line 10530
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 10534
    .end local v8           #i:I
    :cond_0
    const-string v5, "album COLLATE NOCASE ASC"

    .line 10536
    .local v5, sortOrder:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 10537
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10538
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10539
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 10540
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 10544
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 10547
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 10548
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10549
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v12, :cond_1

    .line 10550
    const/16 v0, 0x8

    new-array v9, v0, [I

    .line 10554
    :goto_1
    const/4 v6, 0x0

    .line 10555
    .local v6, albumId:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v0, v9

    if-ge v8, v0, :cond_2

    .line 10556
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 10558
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/online/MusicArrayList;->add(Ljava/lang/Object;)Z

    .line 10559
    aput v6, v9, v8

    .line 10560
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 10555
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 10552
    .end local v6           #albumId:I
    .end local v8           #i:I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [I

    goto :goto_1

    .line 10562
    .restart local v6       #albumId:I
    .restart local v8       #i:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 10563
    const/4 v7, 0x0

    .line 10569
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v5           #sortOrder:Ljava/lang/String;
    .end local v6           #albumId:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #i:I
    .end local v10           #where:Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    monitor-exit v11

    return-object v9

    .line 10565
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v5       #sortOrder:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v10       #where:Ljava/lang/StringBuilder;
    :cond_4
    const/4 v0, 0x0

    new-array v9, v0, [I

    goto :goto_3

    .line 10570
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v5           #sortOrder:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #where:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSongId()I
    .locals 1

    .prologue
    .line 10588
    monitor-enter p0

    .line 10589
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mSongId:I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 10590
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open([II)V
    .locals 8
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 10229
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v5

    .line 10230
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$13700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 10231
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v6, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$13702(Lcom/htc/music/MediaPlaybackService;I)I

    .line 10234
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    .line 10235
    .local v3, oldId:I
    array-length v1, p1

    .line 10237
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 10238
    .local v2, newlist:Z
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 10240
    const/4 v2, 0x0

    .line 10241
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 10242
    aget v4, p1, v0

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$13800(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    aget v6, v6, v0

    if-eq v4, v6, :cond_4

    .line 10243
    const/4 v2, 0x1

    .line 10249
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_6

    .line 10250
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$13700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 10251
    if-gez p2, :cond_2

    .line 10252
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$13900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$Shuffler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result p2

    .line 10256
    :cond_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V
    invoke-static {v4, v1, p2}, Lcom/htc/music/MediaPlaybackService;->access$14000(Lcom/htc/music/MediaPlaybackService;II)V

    .line 10257
    const/4 p2, 0x0

    .line 10259
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$14100(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$14200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v7

    #calls: Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V
    invoke-static {v4, v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$14300(Lcom/htc/music/MediaPlaybackService;[II)V

    .line 10262
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$14500(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$14402(Lcom/htc/music/MediaPlaybackService;[I)[I

    .line 10271
    :goto_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v6, -0x1

    #calls: Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V
    invoke-static {v4, p1, v6}, Lcom/htc/music/MediaPlaybackService;->access$14600(Lcom/htc/music/MediaPlaybackService;[II)V

    .line 10278
    :cond_3
    if-ltz p2, :cond_7

    .line 10279
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4, p2}, Lcom/htc/music/MediaPlaybackService;->access$2702(Lcom/htc/music/MediaPlaybackService;I)I

    .line 10285
    :goto_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$9500(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 10287
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;)V

    .line 10288
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->openCurrent()V

    .line 10292
    monitor-exit v5

    .line 10293
    :goto_3
    return-void

    .line 10241
    .restart local v0       #i:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10266
    .end local v0           #i:I
    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$14100(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$14402(Lcom/htc/music/MediaPlaybackService;[I)[I

    goto :goto_1

    .line 10292
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 10273
    .restart local v1       #listlength:I
    .restart local v2       #newlist:Z
    .restart local v3       #oldId:I
    :cond_6
    :try_start_1
    aget v4, p1, p2

    if-ne v4, v3, :cond_3

    .line 10274
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->play()V

    .line 10275
    monitor-exit v5

    goto :goto_3

    .line 10281
    :cond_7
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$13900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$Shuffler;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v6

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$2702(Lcom/htc/music/MediaPlaybackService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public openCurrent()V
    .locals 4

    .prologue
    const/16 v3, 0x17

    const/4 v2, 0x0

    .line 10298
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->doSendSinaMessage()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$16300(Lcom/htc/music/MediaPlaybackService;)V

    .line 10300
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$8402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 10301
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAsyncOpening:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$7802(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 10302
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 10319
    :goto_0
    return-void

    .line 10305
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 10306
    :cond_1
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayListLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10309
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.asyncopen"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 10310
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10311
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->pause()V

    .line 10313
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 10314
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10315
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 10316
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 10600
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$8902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 10601
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V

    .line 10602
    return-void
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 10462
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "play() +++++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10463
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$8902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 10464
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 10466
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$10602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 10468
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 10471
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10473
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 10474
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 10475
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10200(Lcom/htc/music/MediaPlaybackService;)V

    .line 10479
    :goto_0
    monitor-exit v1

    .line 10480
    return-void

    .line 10477
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    goto :goto_0

    .line 10479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryMediaInfo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 10324
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    sget-object v1, Lcom/htc/music/online/OnlineMusicDBHelper$OnlineMediaArt;->ONLINEMEDIA_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->mOnlineCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 10327
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 10328
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10330
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 10331
    .local v6, colCount:I
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 10332
    .local v8, position:I
    if-lez v6, :cond_0

    if-gez v8, :cond_2

    .line 10333
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent: cols count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10334
    if-eqz v7, :cond_1

    .line 10335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 10336
    const/4 v7, 0x0

    .line 10343
    .end local v6           #colCount:I
    .end local v8           #position:I
    :cond_1
    :goto_0
    return-object v4

    .line 10340
    .restart local v6       #colCount:I
    .restart local v8       #position:I
    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 10341
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .end local v6           #colCount:I
    .end local v8           #position:I
    :cond_3
    move-object v4, v7

    .line 10343
    goto :goto_0
.end method

.method public setAudioMetaData(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 10202
    if-nez p1, :cond_0

    .line 10203
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "setAudioMetaData, cursor = null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10219
    :goto_0
    return-void

    .line 10206
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$14902(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 10207
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15002(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 10208
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "composer"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15102(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 10210
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "displayname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15302(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 10212
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15502(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 10213
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbumId:I
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$7702(Lcom/htc/music/MediaPlaybackService;I)I

    .line 10214
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "song_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSongId:I
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$16202(Lcom/htc/music/MediaPlaybackService;I)I

    .line 10215
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "artist_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mArtistId:I
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15602(Lcom/htc/music/MediaPlaybackService;I)I

    .line 10216
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "bookmark"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mBookmark:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$15702(Lcom/htc/music/MediaPlaybackService;J)J

    .line 10217
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mId:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$15802(Lcom/htc/music/MediaPlaybackService;J)J

    .line 10218
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "is_podcast"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15902(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0
.end method
