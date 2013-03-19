.class public Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;
.super Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
.source "MusicGridViewUtilForCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewUtilForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParentMediaData"
.end annotation


# instance fields
.field protected mCreatorName:Ljava/lang/String;

.field protected mFirstChildId:Ljava/lang/String;

.field protected mIndex:I

.field protected mNumberOfChilds:I

.field protected mSonglistImagePath:Ljava/lang/String;

.field protected mSonglistName:Ljava/lang/String;

.field protected mSonglistUrl:Ljava/lang/String;

.field private needToGetPath:Z

.field final synthetic this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;ILcom/htc/music/online/sinamusic/WrapperSonglist;)V
    .locals 1
    .parameter
    .parameter "index"
    .parameter "songlist"

    .prologue
    const/4 v0, 0x0

    .line 1108
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-direct {p0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;-><init>()V

    .line 1100
    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistImagePath:Ljava/lang/String;

    .line 1102
    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mFirstChildId:Ljava/lang/String;

    .line 1103
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mNumberOfChilds:I

    .line 1106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->needToGetPath:Z

    .line 1109
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    .line 1110
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    .line 1111
    :cond_0
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistUrl:Ljava/lang/String;

    .line 1112
    iput p2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mIndex:I

    .line 1114
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistImagePath:Ljava/lang/String;

    .line 1115
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistCreater()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mCreatorName:Ljava/lang/String;

    .line 1118
    return-void
.end method

.method static synthetic access$002(Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1097
    iput-boolean p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->needToGetPath:Z

    return p1
.end method


# virtual methods
.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 8

    .prologue
    .line 1164
    const/4 v2, 0x0

    .line 1167
    .local v2, mBufferedInputStream:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistImagePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v5, paramURL:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 1169
    .local v4, mURLConnection:Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 1170
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1171
    .local v1, inputStream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #mBufferedInputStream:Ljava/io/BufferedInputStream;
    .local v3, mBufferedInputStream:Ljava/io/BufferedInputStream;
    move-object v2, v3

    .line 1178
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v3           #mBufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v4           #mURLConnection:Ljava/net/URLConnection;
    .end local v5           #paramURL:Ljava/net/URL;
    .restart local v2       #mBufferedInputStream:Ljava/io/BufferedInputStream;
    :goto_0
    return-object v2

    .line 1173
    :catch_0
    move-exception v0

    .line 1175
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "[MusicGridViewUtil]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x2

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    const-string v0, "image/webp"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 1122
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaData;->mSonglistName:Ljava/lang/String;

    goto :goto_0
.end method
