.class public Lcom/htc/music/online/sinamusic/SSinaEngine;
.super Ljava/lang/Object;
.source "SSinaEngine.java"

# interfaces
.implements Lcom/htc/music/online/sinamusic/ISinaEngine;


# static fields
.field private static TOTAL_FRIEND_SONGLIST:I

.field private static TOTAL_RECOMMEND_SONG:I

.field private static TOTAL_SELF_FAVOURITESONG:I

.field private static TOTAL_SELF_SONGLIST:I


# instance fields
.field private logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private mContext:Landroid/content/Context;

.field private mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 43
    sput v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    .line 44
    sput v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    .line 45
    sput v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_FAVOURITESONG:I

    .line 46
    sput v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "cxt"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;

    .line 41
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 50
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/sinamusic/SSinaEngine;)Lcom/htc/music/online/sinamusic/MyLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    return-object v0
.end method


# virtual methods
.method public addToFavourite(I)Z
    .locals 27
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1029
    if-nez p1, :cond_0

    .line 1031
    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1032
    .local v13, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 1037
    .end local v13           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v14

    .line 1038
    .local v14, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual {v14}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v24

    const-string v25, "xtoken"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1039
    .local v23, xtoken:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "&"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1040
    .local v20, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "oauth_token:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1041
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1042
    .local v21, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "oauth_token_secret:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1044
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1045
    .local v6, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.connection.timeout"

    const/16 v26, 0x1770

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1046
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.socket.timeout"

    const/16 v26, 0x1770

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1048
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .local v16, mStrb:Ljava/lang/StringBuilder;
    const-string v22, "http://music.weibo.com/yueku/cooperate/htc/song_collect.php"

    .line 1051
    .local v22, strUrl:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v24, "?"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oauth_token="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    const-string v24, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oauth_token_secret="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v24, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "songid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HttpRequest:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1060
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v8, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 1062
    .local v9, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 1064
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1067
    .local v4, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1068
    .local v17, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, str:Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_1

    .line 1070
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 1073
    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v12, mJSONObject:Lorg/json/JSONObject;
    const-string v24, "retCode"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1075
    .local v18, retCode:I
    if-nez v18, :cond_2

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    const-string v25, "Server Return : Add successful"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1078
    const/16 v24, 0x1

    .line 1116
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v18           #retCode:I
    .end local v19           #str:Ljava/lang/String;
    :goto_1
    return v24

    .line 1082
    .restart local v4       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v18       #retCode:I
    .restart local v19       #str:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    const-string v25, "Server Return : Add failed"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1083
    const/16 v24, -0x5

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v7

    .line 1084
    .local v7, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v7
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1088
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v6           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v8           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mJSONObject:Lorg/json/JSONObject;
    .end local v14           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v16           #mStrb:Ljava/lang/StringBuilder;
    .end local v17           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v18           #retCode:I
    .end local v19           #str:Ljava/lang/String;
    .end local v20           #str1:Ljava/lang/String;
    .end local v21           #str2:Ljava/lang/String;
    .end local v22           #strUrl:Ljava/lang/String;
    .end local v23           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1091
    .local v3, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 1092
    const/16 v24, -0x6

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 1093
    .local v15, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15

    .line 1095
    .end local v3           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v15           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v2

    .line 1098
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1099
    const/16 v24, -0x3

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v5

    .line 1100
    .local v5, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v5

    .line 1102
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_2
    move-exception v2

    .line 1105
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1106
    const/16 v24, -0x3

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 1107
    .local v10, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10

    .line 1109
    .end local v2           #e:Ljava/io/IOException;
    .end local v10           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_3
    move-exception v2

    .line 1112
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1113
    const/16 v24, -0x4

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1114
    .local v11, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 1116
    .end local v2           #e:Lorg/json/JSONException;
    .end local v11           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v6       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v16       #mStrb:Ljava/lang/StringBuilder;
    .restart local v20       #str1:Ljava/lang/String;
    .restart local v21       #str2:Ljava/lang/String;
    .restart local v22       #strUrl:Ljava/lang/String;
    .restart local v23       #xtoken:Ljava/lang/String;
    :cond_3
    const/16 v24, 0x0

    goto :goto_1
.end method

.method public doSinaPlaySongLog(Landroid/os/Bundle;)V
    .locals 24
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1598
    if-eqz p1, :cond_4

    .line 1600
    const-string v21, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1601
    .local v16, songId:I
    const-string v21, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1602
    .local v17, songName:Ljava/lang/String;
    const-string v21, "playlength"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1603
    .local v14, playlength:I
    const-string v21, "totallength"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1604
    .local v20, totallength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "songName:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "playlength:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "totallength:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1609
    if-eqz v16, :cond_3

    if-eqz v17, :cond_3

    if-eqz v14, :cond_3

    if-eqz v20, :cond_3

    .line 1613
    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1614
    .local v6, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.connection.timeout"

    const/16 v23, 0x1770

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1615
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.socket.timeout"

    const/16 v23, 0x1770

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1617
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1618
    .local v11, mStrb:Ljava/lang/StringBuilder;
    const-string v19, "http://music.sina.com.cn/yueku/port/sap_playlog.php"

    .line 1619
    .local v19, strUrl:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    const-string v21, "?"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "id="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "name="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    const-string v23, "%20"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "playlength="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "totallength="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    const-string v21, "coFlag=300055"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    const-string v21, "ownerid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1636
    const-string v21, "ownerid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1637
    .local v13, ownerid:I
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ownerId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    .end local v13           #ownerid:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "HttpRequest:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1642
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1644
    .local v7, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 1645
    .local v8, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 1647
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1650
    .local v4, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1651
    .local v12, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, str:Ljava/lang/String;
    :goto_0
    if-eqz v18, :cond_1

    .line 1653
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 1655
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1656
    .local v15, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "The result is:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1685
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v15           #result:Ljava/lang/String;
    .end local v18           #str:Ljava/lang/String;
    :cond_2
    return-void

    .line 1659
    .end local v6           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v11           #mStrb:Ljava/lang/StringBuilder;
    .end local v19           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1662
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1663
    const/16 v21, -0x3

    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v5

    .line 1664
    .local v5, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v5

    .line 1666
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v3

    .line 1669
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1670
    const/16 v21, -0x3

    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 1671
    .local v9, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 1676
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_3
    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 1677
    .local v10, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10

    .line 1682
    .end local v10           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v14           #playlength:I
    .end local v16           #songId:I
    .end local v17           #songName:Ljava/lang/String;
    .end local v20           #totallength:I
    :cond_4
    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 1683
    .restart local v10       #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10
.end method

.method public getActualPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "playUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v15, "[getActualPlayUrl] + Begin"

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "playUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1228
    const/4 v12, 0x0

    .line 1229
    .local v12, strActualPlayUrl:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1233
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1234
    .local v4, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.connection.timeout"

    const/16 v16, 0x1770

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1235
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.socket.timeout"

    const/16 v16, 0x1770

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1236
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v5, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1239
    .local v6, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_1

    .line 1241
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1244
    .local v2, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1245
    .local v9, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, str:Ljava/lang/String;
    :goto_0
    if-eqz v11, :cond_0

    .line 1247
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1249
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1250
    .local v10, retPlayUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "return PlayUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1251
    const-string v13, "iask_music_song_url="

    .line 1252
    .local v13, strPrefix:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "strActualPlayUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1276
    .end local v2           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v9           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v10           #retPlayUrl:Ljava/lang/String;
    .end local v11           #str:Ljava/lang/String;
    .end local v13           #strPrefix:Ljava/lang/String;
    :cond_1
    return-object v12

    .line 1256
    .end local v4           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #mHttpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 1259
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1260
    const/4 v14, -0x3

    invoke-static {v14}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v3

    .line 1261
    .local v3, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v3

    .line 1263
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v3           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v1

    .line 1266
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1267
    const/4 v14, -0x3

    invoke-static {v14}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v7

    .line 1268
    .local v7, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v7

    .line 1273
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_2
    const/4 v14, -0x1

    invoke-static {v14}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v8

    .line 1274
    .local v8, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v8
.end method

.method public getFriendSonglist(II)Ljava/util/ArrayList;
    .locals 33
    .parameter "page"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 210
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 212
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "parameter error: page<=0 or num<=0"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 213
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 214
    .local v17, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 217
    .end local v17           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_1
    const/16 v30, 0x1

    move/from16 v0, p1

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "This is page 1"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 220
    const/16 v30, -0x1

    sput v30, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    .line 223
    :cond_2
    sget v30, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    if-ltz v30, :cond_4

    sget v30, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    add-int/lit8 v31, p1, -0x1

    mul-int v31, v31, p2

    sub-int v30, v30, v31

    if-gtz v30, :cond_4

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "no more data"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 227
    const/4 v7, 0x0

    .line 354
    :cond_3
    return-object v7

    .line 230
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, mArrayWrapperSonglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v18

    .line 235
    .local v18, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v30

    const-string v31, "xtoken"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 236
    .local v29, xtoken:Ljava/lang/String;
    const/16 v30, 0x0

    const-string v31, "&"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 237
    .local v25, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "oauth_token:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 238
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 239
    .local v26, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "oauth_token_secret:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 241
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 242
    .local v10, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.connection.timeout"

    const/16 v32, 0x1770

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 243
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.socket.timeout"

    const/16 v32, 0x1770

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 244
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v20, mStrb:Ljava/lang/StringBuilder;
    const-string v27, "http://music.weibo.com/yueku/cooperate/htc/get_fr_songlist.php"

    .line 247
    .local v27, strUrl:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v30, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "oauth_token="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v30, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "oauth_token_secret="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v30, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "page="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v30, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "num="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "HttpString:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 258
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 259
    .local v5, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v10, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 260
    .local v6, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    const/16 v31, 0xc8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 262
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v30, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 265
    .local v8, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v21, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .local v24, str:Ljava/lang/String;
    :goto_0
    if-eqz v24, :cond_5

    .line 268
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    goto :goto_0

    .line 271
    :cond_5
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    .local v15, mJSONObject:Lorg/json/JSONObject;
    const-string v30, "retCode"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 273
    .local v23, retCode:I
    if-nez v23, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Get Songlist successful"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 277
    const-string v30, "total"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 278
    .local v28, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "total:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 279
    sput v28, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "normal request"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 283
    const-string v30, "Content"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 284
    .local v13, mJSONArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v30

    move/from16 v0, v30

    if-ge v4, v0, :cond_3

    .line 286
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 287
    .local v16, mJsonObject:Lorg/json/JSONObject;
    new-instance v22, Lcom/htc/music/online/sinamusic/WrapperSonglist;

    invoke-direct/range {v22 .. v22}, Lcom/htc/music/online/sinamusic/WrapperSonglist;-><init>()V

    .line 288
    .local v22, mWrapperSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setTotalSonglist(I)V

    .line 289
    const-string v30, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistId(I)V

    .line 290
    const-string v30, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistName(Ljava/lang/String;)V

    .line 291
    const-string v30, "image"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistImage(Ljava/lang/String;)V

    .line 292
    const-string v30, "detail_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistDetailUrl(Ljava/lang/String;)V

    .line 293
    const-string v30, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistUrl(Ljava/lang/String;)V

    .line 294
    const-string v30, "creater_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistCreaterId(I)V

    .line 295
    const-string v30, "creater"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistCreater(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mArrayWrapperSonglist.size:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 306
    .end local v4           #i:I
    .end local v13           #mJSONArray:Lorg/json/JSONArray;
    .end local v16           #mJsonObject:Lorg/json/JSONObject;
    .end local v22           #mWrapperSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;
    .end local v28           #total:I
    :cond_6
    const/16 v30, -0x1

    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : parameter error"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 309
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 310
    .local v11, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 326
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 329
    .local v3, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 330
    const/16 v30, -0x6

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 331
    .local v19, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 312
    .end local v3           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v19           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #xtoken:Ljava/lang/String;
    :cond_7
    const/16 v30, -0x2

    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 314
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : user not login"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 315
    const/16 v30, -0x2

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 316
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 333
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #xtoken:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 336
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 337
    const/16 v30, -0x3

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 338
    .local v9, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 318
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v9           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #xtoken:Ljava/lang/String;
    :cond_8
    const/16 v30, -0x3

    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 320
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : Get Songlist failed"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 321
    const/16 v30, -0x5

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 322
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 340
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #xtoken:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 343
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    const/16 v30, -0x3

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v12

    .line 345
    .local v12, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v12

    .line 347
    .end local v2           #e:Ljava/io/IOException;
    .end local v12           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_3
    move-exception v2

    .line 350
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 351
    const/16 v30, -0x4

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 352
    .local v14, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14
.end method

.method public getLoginStatus()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->getGoogleAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 74
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 82
    :goto_0
    return v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v2, "account null"

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 82
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMusicCategory()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperCategory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v14, mMusicCategoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperCategory;>;"
    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 150
    .local v6, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.connection.timeout"

    const/16 v19, 0x1770

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 151
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.socket.timeout"

    const/16 v19, 0x1770

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 152
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    const-string v17, "http://music.weibo.com/yueku/cooperate/htc/music_online.php"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 153
    .local v7, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 155
    .local v8, mHttpResponse:Lorg/apache/http/HttpResponse;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v15, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 158
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 160
    .local v4, mBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, str:Ljava/lang/String;
    :goto_0
    if-eqz v16, :cond_0

    .line 162
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 166
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v16           #str:Ljava/lang/String;
    :cond_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 167
    .local v10, mJSONArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "JSONArray:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 171
    .local v12, mJsonObject:Lorg/json/JSONObject;
    new-instance v13, Lcom/htc/music/online/sinamusic/WrapperCategory;

    invoke-direct {v13}, Lcom/htc/music/online/sinamusic/WrapperCategory;-><init>()V

    .line 172
    .local v13, mMusicCategory:Lcom/htc/music/online/sinamusic/WrapperCategory;
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/music/online/sinamusic/WrapperCategory;->setCategoryTitle(Ljava/lang/String;)V

    .line 173
    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/music/online/sinamusic/WrapperCategory;->setCategoryurl(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    .end local v3           #i:I
    .end local v6           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v10           #mJSONArray:Lorg/json/JSONArray;
    .end local v12           #mJsonObject:Lorg/json/JSONObject;
    .end local v13           #mMusicCategory:Lcom/htc/music/online/sinamusic/WrapperCategory;
    .end local v15           #mStringBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 180
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 181
    const/16 v17, -0x3

    invoke-static/range {v17 .. v17}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v5

    .line 182
    .local v5, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v5

    .line 184
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v2

    .line 187
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    const/16 v17, -0x3

    invoke-static/range {v17 .. v17}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 189
    .local v9, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 191
    .end local v2           #e:Ljava/io/IOException;
    .end local v9           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_2
    move-exception v2

    .line 194
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 195
    const/16 v17, -0x4

    invoke-static/range {v17 .. v17}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 196
    .local v11, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 198
    .end local v2           #e:Lorg/json/JSONException;
    .end local v11           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v3       #i:I
    .restart local v6       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v10       #mJSONArray:Lorg/json/JSONArray;
    .restart local v15       #mStringBuilder:Ljava/lang/StringBuilder;
    :cond_1
    return-object v14
.end method

.method public getRecommendSong(II)Ljava/util/ArrayList;
    .locals 34
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 366
    if-ltz p1, :cond_0

    const/16 v31, 0x64

    move/from16 v0, p2

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 368
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "parameter error: start<=0 or lim>=100"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 369
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 370
    .local v19, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 373
    .end local v19           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_1
    if-nez p1, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "This is start 0"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 376
    const/16 v31, -0x1

    sput v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    .line 379
    :cond_2
    sget v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    if-ltz v31, :cond_4

    sget v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    move/from16 v0, p1

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "no more data"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 382
    const/16 v20, 0x0

    .line 507
    :cond_3
    return-object v20

    .line 385
    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v20, mRecommendSongArraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :try_start_0
    new-instance v14, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 389
    .local v14, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.connection.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 390
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.socket.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 391
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v22, mStrb:Ljava/lang/StringBuilder;
    const-string v29, "http://music.weibo.com/yueku/cooperate/htc/get_wpp_songs.php"

    .line 394
    .local v29, strUrl:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v31, "?"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "start="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v31, "&"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "limit="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "HttpString:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 401
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 402
    .local v10, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v14, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 403
    .local v11, localHttpResponse:Lorg/apache/http/HttpResponse;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v23, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 406
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/InputStreamReader;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 408
    .local v12, mBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, str:Ljava/lang/String;
    :goto_0
    if-eqz v28, :cond_5

    .line 410
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    goto :goto_0

    .line 414
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v28           #str:Ljava/lang/String;
    :cond_5
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 415
    .local v18, mJSONObject:Lorg/json/JSONObject;
    const-string v31, "retCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 416
    .local v27, retCode:I
    if-nez v27, :cond_7

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Get Songlist Successful"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 420
    const-string v31, "total"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 421
    .local v30, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "total:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 422
    sput v30, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    .line 424
    const-string v31, "Content"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 425
    .local v2, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v31

    if-lez v31, :cond_6

    .line 427
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v7, v0, :cond_3

    .line 429
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 430
    .local v21, mSongJSONObject:Lorg/json/JSONObject;
    new-instance v24, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 432
    .local v24, mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setTotalSong(I)V

    .line 434
    const-string v31, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 435
    .local v8, id:I
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongId(I)V

    .line 437
    const-string v31, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 438
    .local v25, name:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongName(Ljava/lang/String;)V

    .line 440
    const-string v31, "artist"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, artist:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 443
    const-string v31, "description"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, description:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDescription(Ljava/lang/String;)V

    .line 446
    const-string v31, "image"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, image:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongImage(Ljava/lang/String;)V

    .line 451
    const-string v31, "playUrl"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 452
    .local v26, playUrl:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayUrl(Ljava/lang/String;)V

    .line 454
    const-string v31, "detail_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 455
    .local v5, detail_url:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDetailUrl(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 462
    .end local v3           #artist:Ljava/lang/String;
    .end local v4           #description:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #id:I
    .end local v9           #image:Ljava/lang/String;
    .end local v21           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v24           #mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    .end local v25           #name:Ljava/lang/String;
    .end local v26           #playUrl:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : No match Data"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 463
    const/16 v31, -0x7

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 464
    .local v15, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 486
    .end local v2           #JsonArray:Lorg/json/JSONArray;
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v27           #retCode:I
    .end local v29           #strUrl:Ljava/lang/String;
    .end local v30           #total:I
    :catch_0
    move-exception v6

    .line 489
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 490
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 491
    .local v13, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 467
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v13           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v27       #retCode:I
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_7
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 469
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : parameter error"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 470
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 471
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 493
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v27           #retCode:I
    .end local v29           #strUrl:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 496
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 498
    .local v16, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16

    .line 473
    .end local v6           #e:Ljava/io/IOException;
    .end local v16           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v27       #retCode:I
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_8
    const/16 v31, -0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 475
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : user not login"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 476
    const/16 v31, -0x2

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 477
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 500
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v27           #retCode:I
    .end local v29           #strUrl:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 503
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 504
    const/16 v31, -0x4

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 505
    .local v17, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 479
    .end local v6           #e:Lorg/json/JSONException;
    .end local v17           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v27       #retCode:I
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_9
    const/16 v31, -0x3

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 481
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : Get Songlist failed"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 482
    const/16 v31, -0x5

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 483
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
.end method

.method public getSelfFavouriteSong(II)Ljava/util/ArrayList;
    .locals 42
    .parameter "page"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 519
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 521
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "parameter error: page<=0 or num<=0"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 522
    const/16 v39, -0x1

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 523
    .local v19, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 526
    .end local v19           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_1
    const/16 v39, 0x1

    move/from16 v0, p1

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "This is page 1"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 529
    const/16 v39, -0x1

    sput v39, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_FAVOURITESONG:I

    .line 532
    :cond_2
    sget v39, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_FAVOURITESONG:I

    if-ltz v39, :cond_4

    sget v39, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_FAVOURITESONG:I

    add-int/lit8 v40, p1, -0x1

    mul-int v40, v40, p2

    sub-int v39, v39, v40

    if-gtz v39, :cond_4

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "no more data"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 536
    const/16 v21, 0x0

    .line 689
    :cond_3
    return-object v21

    .line 540
    :cond_4
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v21, mSelfFavouriteSongArraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v20

    .line 545
    .local v20, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v39

    const-string v40, "xtoken"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 546
    .local v38, xtoken:Ljava/lang/String;
    const/16 v39, 0x0

    const-string v40, "&"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 547
    .local v34, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "oauth_token:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 548
    const-string v39, "&"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 549
    .local v35, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "oauth_token_secret:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 551
    new-instance v14, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 552
    .local v14, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v39

    const-string v40, "http.connection.timeout"

    const/16 v41, 0x1770

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-interface/range {v39 .. v41}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 553
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v39

    const-string v40, "http.socket.timeout"

    const/16 v41, 0x1770

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-interface/range {v39 .. v41}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 554
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v24, mStrb:Ljava/lang/StringBuilder;
    const-string v36, "http://music.weibo.com/yueku/cooperate/htc/user_collect_songs.php"

    .line 557
    .local v36, strUrl:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v39, "?"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "oauth_token="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v39, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "oauth_token_secret="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v39, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "page="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v39, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "num="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "HttpRequest:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 568
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 569
    .local v10, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v14, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 570
    .local v11, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v39

    const/16 v40, 0xc8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    .line 572
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v39, Ljava/io/InputStreamReader;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v39

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 575
    .local v12, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v25, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    .local v33, str:Ljava/lang/String;
    :goto_0
    if-eqz v33, :cond_5

    .line 579
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    goto :goto_0

    .line 583
    :cond_5
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 584
    .local v18, mJSONObject:Lorg/json/JSONObject;
    const-string v39, "retCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 585
    .local v29, retCode:I
    if-nez v29, :cond_7

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Get Song Successful"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 589
    const-string v39, "total"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 590
    .local v37, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "total:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 592
    const-string v39, "Content"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 593
    .local v2, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v39

    if-lez v39, :cond_6

    .line 595
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v39

    move/from16 v0, v39

    if-ge v8, v0, :cond_3

    .line 597
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 598
    .local v23, mSongJSONObject:Lorg/json/JSONObject;
    new-instance v26, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct/range {v26 .. v26}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 600
    .local v26, mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setTotalSong(I)V

    .line 602
    const-string v39, "SONGBASEID"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 603
    .local v9, id:I
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongId(I)V

    .line 605
    const-string v39, "NAME"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 606
    .local v27, name:Ljava/lang/String;
    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongName(Ljava/lang/String;)V

    .line 608
    const-string v39, "SINGERID"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 609
    .local v30, singerId:I
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerId(I)V

    .line 611
    const-string v39, "SINGERCNAME"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 612
    .local v31, singerName:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 614
    const-string v39, "ALBUMID"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 615
    .local v3, albumId:I
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumId(I)V

    .line 617
    const-string v39, "ALBUMCNAME"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, albumName:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumName(Ljava/lang/String;)V

    .line 620
    const-string v39, "IMGURL"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 623
    .local v32, songImage:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongImage(Ljava/lang/String;)V

    .line 625
    const-string v39, "PLAYURL"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 626
    .local v28, playUrl:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayUrl(Ljava/lang/String;)V

    .line 628
    const-string v39, "detail_url"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, detail_url:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDetailUrl(Ljava/lang/String;)V

    .line 631
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 636
    .end local v3           #albumId:I
    .end local v4           #albumName:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #id:I
    .end local v23           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v26           #mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    .end local v27           #name:Ljava/lang/String;
    .end local v28           #playUrl:Ljava/lang/String;
    .end local v30           #singerId:I
    .end local v31           #singerName:Ljava/lang/String;
    .end local v32           #songImage:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Server Return : No match Data"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 637
    const/16 v39, -0x7

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 638
    .local v15, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 661
    .end local v2           #JsonArray:Lorg/json/JSONArray;
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v24           #mStrb:Ljava/lang/StringBuilder;
    .end local v25           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v29           #retCode:I
    .end local v33           #str:Ljava/lang/String;
    .end local v34           #str1:Ljava/lang/String;
    .end local v35           #str2:Ljava/lang/String;
    .end local v36           #strUrl:Ljava/lang/String;
    .end local v37           #total:I
    .end local v38           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 664
    .local v7, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v7}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 665
    const/16 v39, -0x6

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v22

    .line 666
    .local v22, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v22

    .line 641
    .end local v7           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v22           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v12       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v20       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v24       #mStrb:Ljava/lang/StringBuilder;
    .restart local v25       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v29       #retCode:I
    .restart local v33       #str:Ljava/lang/String;
    .restart local v34       #str1:Ljava/lang/String;
    .restart local v35       #str2:Ljava/lang/String;
    .restart local v36       #strUrl:Ljava/lang/String;
    .restart local v38       #xtoken:Ljava/lang/String;
    :cond_7
    const/16 v39, -0x1

    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_8

    .line 643
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Server Return : parameter error"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 644
    const/16 v39, -0x1

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 645
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 668
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v24           #mStrb:Ljava/lang/StringBuilder;
    .end local v25           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v29           #retCode:I
    .end local v33           #str:Ljava/lang/String;
    .end local v34           #str1:Ljava/lang/String;
    .end local v35           #str2:Ljava/lang/String;
    .end local v36           #strUrl:Ljava/lang/String;
    .end local v38           #xtoken:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 671
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 672
    const/16 v39, -0x3

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 673
    .local v13, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 647
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v13           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v12       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v20       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v24       #mStrb:Ljava/lang/StringBuilder;
    .restart local v25       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v29       #retCode:I
    .restart local v33       #str:Ljava/lang/String;
    .restart local v34       #str1:Ljava/lang/String;
    .restart local v35       #str2:Ljava/lang/String;
    .restart local v36       #strUrl:Ljava/lang/String;
    .restart local v38       #xtoken:Ljava/lang/String;
    :cond_8
    const/16 v39, -0x2

    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_9

    .line 649
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Server Return : user not login"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 650
    const/16 v39, -0x2

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 651
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 675
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v24           #mStrb:Ljava/lang/StringBuilder;
    .end local v25           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v29           #retCode:I
    .end local v33           #str:Ljava/lang/String;
    .end local v34           #str1:Ljava/lang/String;
    .end local v35           #str2:Ljava/lang/String;
    .end local v36           #strUrl:Ljava/lang/String;
    .end local v38           #xtoken:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 678
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 679
    const/16 v39, -0x3

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 680
    .local v16, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16

    .line 653
    .end local v6           #e:Ljava/io/IOException;
    .end local v16           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v12       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v20       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v24       #mStrb:Ljava/lang/StringBuilder;
    .restart local v25       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v29       #retCode:I
    .restart local v33       #str:Ljava/lang/String;
    .restart local v34       #str1:Ljava/lang/String;
    .restart local v35       #str2:Ljava/lang/String;
    .restart local v36       #strUrl:Ljava/lang/String;
    .restart local v38       #xtoken:Ljava/lang/String;
    :cond_9
    const/16 v39, -0x3

    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 655
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Server Return : Get Songlist failed"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 656
    const/16 v39, -0x5

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 657
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_3
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 682
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v24           #mStrb:Ljava/lang/StringBuilder;
    .end local v25           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v29           #retCode:I
    .end local v33           #str:Ljava/lang/String;
    .end local v34           #str1:Ljava/lang/String;
    .end local v35           #str2:Ljava/lang/String;
    .end local v36           #strUrl:Ljava/lang/String;
    .end local v38           #xtoken:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 685
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 686
    const/16 v39, -0x4

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 687
    .local v17, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17
.end method

.method public getSelfSonglist(II)Ljava/util/ArrayList;
    .locals 34
    .parameter "page"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1698
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 1700
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "parameter error: page<=0 or num<=0"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1701
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 1702
    .local v17, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 1705
    .end local v17           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_1
    const/16 v31, 0x1

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "This is page 1"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1708
    const/16 v31, -0x1

    sput v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    .line 1711
    :cond_2
    sget v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    if-ltz v31, :cond_4

    sget v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    add-int/lit8 v32, p1, -0x1

    mul-int v32, v32, p2

    sub-int v31, v31, v32

    if-gtz v31, :cond_4

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "no more data"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1715
    const/4 v7, 0x0

    .line 1846
    :cond_3
    return-object v7

    .line 1718
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    .local v7, mArrayWrapperSonglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v18

    .line 1724
    .local v18, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/opensense/social/data/Profile;->getUser_name()Ljava/lang/String;

    move-result-object v29

    .line 1725
    .local v29, username:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v31

    const-string v32, "xtoken"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1726
    .local v30, xtoken:Ljava/lang/String;
    const/16 v31, 0x0

    const-string v32, "&"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1727
    .local v25, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "oauth_token:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1728
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v32

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 1729
    .local v26, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "oauth_token_secret:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1731
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1732
    .local v10, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.connection.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1733
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.socket.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1734
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1736
    .local v20, mStrb:Ljava/lang/StringBuilder;
    const-string v27, "http://music.weibo.com/yueku/cooperate/htc/get_my_songlist.php"

    .line 1737
    .local v27, strUrl:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    const-string v31, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "oauth_token="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const-string v31, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "oauth_token_secret="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    const-string v31, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "page="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    const-string v31, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "num="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "HttpString:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1748
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v5, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v10, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1750
    .local v6, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 1752
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1755
    .local v8, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1756
    .local v21, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .local v24, str:Ljava/lang/String;
    :goto_0
    if-eqz v24, :cond_5

    .line 1758
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    goto :goto_0

    .line 1761
    :cond_5
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1762
    .local v15, mJSONObject:Lorg/json/JSONObject;
    const-string v31, "retCode"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 1763
    .local v23, retCode:I
    if-nez v23, :cond_7

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Get Songlist successful"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1767
    const-string v31, "total"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 1768
    .local v28, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "total:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1769
    sput v28, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "normal request"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1771
    const-string v31, "Content"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1772
    .local v13, mJSONArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v4, v0, :cond_3

    .line 1774
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 1775
    .local v16, mJsonObject:Lorg/json/JSONObject;
    new-instance v22, Lcom/htc/music/online/sinamusic/WrapperSonglist;

    invoke-direct/range {v22 .. v22}, Lcom/htc/music/online/sinamusic/WrapperSonglist;-><init>()V

    .line 1776
    .local v22, mWrapperSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setTotalSonglist(I)V

    .line 1778
    const-string v31, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    if-nez v31, :cond_6

    .line 1780
    const-string v31, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistId(I)V

    .line 1781
    const-string v31, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistName(Ljava/lang/String;)V

    .line 1782
    const-string v31, "image"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistImage(Ljava/lang/String;)V

    .line 1783
    const-string v31, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistUrl(Ljava/lang/String;)V

    .line 1784
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "mArrayWrapperSonglist.size:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1772
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1788
    :cond_6
    const-string v31, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistId(I)V

    .line 1789
    const-string v31, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistName(Ljava/lang/String;)V

    .line 1790
    const-string v31, "image"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistImage(Ljava/lang/String;)V

    .line 1791
    const-string v31, "detail_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistDetailUrl(Ljava/lang/String;)V

    .line 1792
    const-string v31, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistUrl(Ljava/lang/String;)V

    .line 1793
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 1818
    .end local v4           #i:I
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13           #mJSONArray:Lorg/json/JSONArray;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v16           #mJsonObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v22           #mWrapperSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v28           #total:I
    .end local v29           #username:Ljava/lang/String;
    .end local v30           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1821
    .local v3, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 1822
    const/16 v31, -0x6

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 1823
    .local v19, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 1798
    .end local v3           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v19           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #username:Ljava/lang/String;
    .restart local v30       #xtoken:Ljava/lang/String;
    :cond_7
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 1800
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : parameter error"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1801
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1802
    .local v11, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1825
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #username:Ljava/lang/String;
    .end local v30           #xtoken:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1828
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1829
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 1830
    .local v9, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 1804
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v9           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #username:Ljava/lang/String;
    .restart local v30       #xtoken:Ljava/lang/String;
    :cond_8
    const/16 v31, -0x2

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1806
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : user not login"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1807
    const/16 v31, -0x2

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1808
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1832
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #username:Ljava/lang/String;
    .end local v30           #xtoken:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1835
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1836
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v12

    .line 1837
    .local v12, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v12

    .line 1810
    .end local v2           #e:Ljava/io/IOException;
    .end local v12           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #username:Ljava/lang/String;
    .restart local v30       #xtoken:Ljava/lang/String;
    :cond_9
    const/16 v31, -0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 1812
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : Get Songlist failed"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1813
    const/16 v31, -0x5

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1814
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_3
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1839
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #username:Ljava/lang/String;
    .end local v30           #xtoken:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 1842
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1843
    const/16 v31, -0x4

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 1844
    .local v14, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14
.end method

.method public getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/online/sinamusic/SinaAidl;->getInstance(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;

    return-object v0
.end method

.method public getSongDetail(I)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .locals 36
    .parameter "songid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songid:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 888
    if-nez p1, :cond_0

    .line 890
    const/16 v33, -0x1

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 891
    .local v17, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 894
    .end local v17           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_0
    new-instance v20, Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    invoke-direct/range {v20 .. v20}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;-><init>()V

    .line 898
    .local v20, mWrapperSongDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    :try_start_0
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 899
    .local v9, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v33

    const-string v34, "http.connection.timeout"

    const/16 v35, 0x2710

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-interface/range {v33 .. v35}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 900
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v33

    const-string v34, "http.socket.timeout"

    const/16 v35, 0x2710

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-interface/range {v33 .. v35}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 902
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    .local v18, mStrb:Ljava/lang/StringBuilder;
    const-string v32, "http://music.weibo.com/yueku/cooperate/htc/get_song_info.php"

    .line 904
    .local v32, strUrl:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const-string v33, "?"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "id="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "HttpRequest:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 910
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 911
    .local v11, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v9, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 912
    .local v12, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v33

    const/16 v34, 0xc8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 914
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v33, Ljava/io/InputStreamReader;

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v33

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 917
    .local v7, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v19, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v31

    .local v31, str:Ljava/lang/String;
    :goto_0
    if-eqz v31, :cond_1

    .line 920
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v31

    goto :goto_0

    .line 923
    :cond_1
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 924
    .local v15, mJSONObject:Lorg/json/JSONObject;
    const-string v33, "retCode"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 925
    .local v23, retCode:I
    if-nez v23, :cond_3

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    const-string v34, "Get Song detail successful"

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 929
    const-string v33, "Content"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 930
    .local v16, mJSONObject2:Lorg/json/JSONObject;
    const-string v33, "songId"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 931
    .local v26, songId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songId:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 932
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongId(I)V

    .line 934
    const-string v33, "songName"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 935
    .local v29, songName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songName:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 936
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongName(Ljava/lang/String;)V

    .line 938
    const-string v33, "singerId"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 939
    .local v24, singerId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "singerId:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 940
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSingerId(I)V

    .line 942
    const-string v33, "singerName"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 943
    .local v25, singerName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "singerName:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 944
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSingerName(Ljava/lang/String;)V

    .line 946
    const-string v33, "albumId"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 947
    .local v2, albumId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "albumId:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 948
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setAlbumId(I)V

    .line 950
    const-string v33, "albumName"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 951
    .local v3, albumName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "albumName:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 952
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setAlbumName(Ljava/lang/String;)V

    .line 954
    const-string v33, "songImage"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 955
    .local v27, songImage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songImage:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 956
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongImage(Ljava/lang/String;)V

    .line 958
    const-string v33, "style"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 959
    .local v30, songStyle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "style:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 960
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongStyle(Ljava/lang/String;)V

    .line 962
    const-string v33, "lyric"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 963
    .local v28, songLyric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songLyric:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 964
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongLyric(Ljava/lang/String;)V

    .line 966
    const-string v33, "playTime"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 967
    .local v21, playTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "playTime:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 968
    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongPlayTime(Ljava/lang/String;)V

    .line 970
    const-string v33, "playUrl"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 971
    .local v22, playUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "playUrl:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 972
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongPlayUrl(Ljava/lang/String;)V

    .line 974
    const-string v33, "downFlag"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 975
    .local v5, downFlag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "downFlag:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 976
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongDownFlag(Ljava/lang/String;)V

    .line 978
    const-string v33, "detail_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, detail_url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "detail_url:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 980
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongDetailUrl(Ljava/lang/String;)V

    .line 1017
    .end local v2           #albumId:I
    .end local v3           #albumName:Ljava/lang/String;
    .end local v4           #detail_url:Ljava/lang/String;
    .end local v5           #downFlag:Ljava/lang/String;
    .end local v7           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v16           #mJSONObject2:Lorg/json/JSONObject;
    .end local v19           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v21           #playTime:Ljava/lang/String;
    .end local v22           #playUrl:Ljava/lang/String;
    .end local v23           #retCode:I
    .end local v24           #singerId:I
    .end local v25           #singerName:Ljava/lang/String;
    .end local v26           #songId:I
    .end local v27           #songImage:Ljava/lang/String;
    .end local v28           #songLyric:Ljava/lang/String;
    .end local v29           #songName:Ljava/lang/String;
    .end local v30           #songStyle:Ljava/lang/String;
    .end local v31           #str:Ljava/lang/String;
    :cond_2
    return-object v20

    .line 982
    .restart local v7       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v19       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v31       #str:Ljava/lang/String;
    :cond_3
    const/16 v33, -0x1

    move/from16 v0, v23

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    const-string v34, "Server Return : parameter error"

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 985
    const/16 v33, -0x1

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 986
    .local v10, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 996
    .end local v7           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v9           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v11           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mStrb:Ljava/lang/StringBuilder;
    .end local v19           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v31           #str:Ljava/lang/String;
    .end local v32           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 999
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1000
    const/16 v33, -0x3

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v8

    .line 1001
    .local v8, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v8

    .line 988
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v8           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v7       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v9       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v11       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mStrb:Ljava/lang/StringBuilder;
    .restart local v19       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v31       #str:Ljava/lang/String;
    .restart local v32       #strUrl:Ljava/lang/String;
    :cond_4
    const/16 v33, -0x2

    move/from16 v0, v23

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 990
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    const-string v34, "Server Return : Get Songlist failed"

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 991
    const/16 v33, -0x5

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 992
    .restart local v10       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1003
    .end local v7           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v9           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v11           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mStrb:Ljava/lang/StringBuilder;
    .end local v19           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v31           #str:Ljava/lang/String;
    .end local v32           #strUrl:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1006
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1007
    const/16 v33, -0x3

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1008
    .local v13, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 1010
    .end local v6           #e:Ljava/io/IOException;
    .end local v13           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_2
    move-exception v6

    .line 1013
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1014
    const/16 v33, -0x4

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 1015
    .local v14, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14
.end method

.method public getSonglistDetail(Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .locals 53
    .parameter "sUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 700
    move-object/from16 v48, p1

    .line 701
    .local v48, strUrl:Ljava/lang/String;
    if-nez v48, :cond_0

    .line 703
    const/16 v50, -0x1

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v24

    .line 704
    .local v24, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v24

    .line 707
    .end local v24           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_0
    new-instance v29, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    invoke-direct/range {v29 .. v29}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;-><init>()V

    .line 711
    .local v29, mWrapperSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "The request URL : "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 713
    new-instance v15, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 714
    .local v15, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v50

    const-string v51, "http.connection.timeout"

    const/16 v52, 0x1770

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    invoke-interface/range {v50 .. v52}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 715
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v50

    const-string v51, "http.socket.timeout"

    const/16 v52, 0x1770

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    invoke-interface/range {v50 .. v52}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 716
    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 718
    .local v17, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 719
    .local v18, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v50

    const/16 v51, 0xc8

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_3

    .line 721
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v50, Ljava/io/InputStreamReader;

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v51

    invoke-interface/range {v51 .. v51}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v50

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 724
    .local v13, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v27, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v47

    .local v47, str:Ljava/lang/String;
    :goto_0
    if-eqz v47, :cond_1

    .line 727
    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v47

    goto :goto_0

    .line 730
    :cond_1
    new-instance v21, Lorg/json/JSONObject;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 731
    .local v21, mJSONObject:Lorg/json/JSONObject;
    const-string v50, "retCode"

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 732
    .local v38, retCode:I
    if-nez v38, :cond_5

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    const-string v51, "Get Songlist successful"

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 736
    const-string v50, "Content"

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 737
    .local v22, mJSONObject2:Lorg/json/JSONObject;
    const-string v50, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 738
    .local v45, songlistId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "songlistId:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 739
    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistId(I)V

    .line 742
    const-string v50, "owner"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 743
    .local v23, mOwner:Lorg/json/JSONObject;
    const-string v50, "sinaid"

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    .line 744
    .local v34, owner_sinaid:I
    const-string v50, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 745
    .local v33, owner_name:Ljava/lang/String;
    const-string v50, "image"

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 746
    .local v32, owner_image:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "owner_sinaid:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "owner_name:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "owner_image:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 749
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistOwnerSinaId(I)V

    .line 750
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistOwnerName(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistOwnerImage(Ljava/lang/String;)V

    .line 753
    const-string v50, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 754
    .local v31, name:Ljava/lang/String;
    const-string v50, "songsum"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 755
    .local v46, songsum:Ljava/lang/String;
    const-string v50, "collect"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 756
    .local v5, collect:Ljava/lang/String;
    const-string v50, "share"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 757
    .local v39, share:Ljava/lang/String;
    const-string v50, "createtime"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 758
    .local v6, createtime:Ljava/lang/String;
    const-string v50, "updatetime"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 759
    .local v49, updatetime:Ljava/lang/String;
    const-string v50, "mid"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 760
    .local v30, mid:I
    const-string v50, "hot"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 761
    .local v9, hot:Ljava/lang/String;
    const-string v50, "photo"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 762
    .local v35, photo:Ljava/lang/String;
    const-string v50, "intro"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 763
    .local v12, intro:Ljava/lang/String;
    const-string v50, "detail_url"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, detail_url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "name:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "songsum:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "collect:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "share:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "createtime:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "updatetime:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "mid:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "hot:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "photo:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "intro:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "detail_url:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 776
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistName(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistSongSum(Ljava/lang/String;)V

    .line 778
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistCollect(Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistShare(Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistCreatetime(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistUpdatetime(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {v29 .. v30}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistWeiboId(I)V

    .line 783
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistHot(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistPhoto(Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistIntro(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistDetailUrl(Ljava/lang/String;)V

    .line 789
    const-string v50, "songs"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 790
    .local v2, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v50

    if-lez v50, :cond_4

    .line 792
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v26, mSongitemlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v50

    move/from16 v0, v50

    if-ge v10, v0, :cond_2

    .line 795
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 796
    .local v25, mSongJSONObject:Lorg/json/JSONObject;
    new-instance v28, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct/range {v28 .. v28}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 798
    .local v28, mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    const-string v50, "SONGBASEID"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 799
    .local v43, songId:I
    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongId(I)V

    .line 801
    const-string v50, "NAME"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 802
    .local v44, songName:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongName(Ljava/lang/String;)V

    .line 804
    const-string v50, "ALBUMID"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 805
    .local v3, albumId:I
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumId(I)V

    .line 807
    const-string v50, "ALBUMCNAME"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, albumName:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumName(Ljava/lang/String;)V

    .line 810
    const-string v50, "SINGERID"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    .line 811
    .local v40, singerId:I
    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerId(I)V

    .line 813
    const-string v50, "SINGERCNAME"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 814
    .local v41, singerName:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 816
    const-string v50, "PLAYTIME"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 817
    .local v36, playTime:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayTime(Ljava/lang/String;)V

    .line 819
    const-string v50, "PLAYURL"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 820
    .local v37, playUrl:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayUrl(Ljava/lang/String;)V

    .line 822
    const-string v50, "IMGURL"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 823
    .local v11, imageUrl:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongImage(Ljava/lang/String;)V

    .line 825
    const-string v50, "detail_url"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 826
    .local v42, songDetailUrl:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDetailUrl(Ljava/lang/String;)V

    .line 828
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "songItemlist.size:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 793
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 831
    .end local v3           #albumId:I
    .end local v4           #albumName:Ljava/lang/String;
    .end local v11           #imageUrl:Ljava/lang/String;
    .end local v25           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v28           #mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    .end local v36           #playTime:Ljava/lang/String;
    .end local v37           #playUrl:Ljava/lang/String;
    .end local v40           #singerId:I
    .end local v41           #singerName:Ljava/lang/String;
    .end local v42           #songDetailUrl:Ljava/lang/String;
    .end local v43           #songId:I
    .end local v44           #songName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSongItemlist(Ljava/util/ArrayList;)V

    .line 875
    .end local v2           #JsonArray:Lorg/json/JSONArray;
    .end local v5           #collect:Ljava/lang/String;
    .end local v6           #createtime:Ljava/lang/String;
    .end local v7           #detail_url:Ljava/lang/String;
    .end local v9           #hot:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #intro:Ljava/lang/String;
    .end local v13           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v21           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mJSONObject2:Lorg/json/JSONObject;
    .end local v23           #mOwner:Lorg/json/JSONObject;
    .end local v26           #mSongitemlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    .end local v27           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v30           #mid:I
    .end local v31           #name:Ljava/lang/String;
    .end local v32           #owner_image:Ljava/lang/String;
    .end local v33           #owner_name:Ljava/lang/String;
    .end local v34           #owner_sinaid:I
    .end local v35           #photo:Ljava/lang/String;
    .end local v38           #retCode:I
    .end local v39           #share:Ljava/lang/String;
    .end local v45           #songlistId:I
    .end local v46           #songsum:Ljava/lang/String;
    .end local v47           #str:Ljava/lang/String;
    .end local v49           #updatetime:Ljava/lang/String;
    :cond_3
    return-object v29

    .line 835
    .restart local v2       #JsonArray:Lorg/json/JSONArray;
    .restart local v5       #collect:Ljava/lang/String;
    .restart local v6       #createtime:Ljava/lang/String;
    .restart local v7       #detail_url:Ljava/lang/String;
    .restart local v9       #hot:Ljava/lang/String;
    .restart local v12       #intro:Ljava/lang/String;
    .restart local v13       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v21       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v23       #mOwner:Lorg/json/JSONObject;
    .restart local v27       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v30       #mid:I
    .restart local v31       #name:Ljava/lang/String;
    .restart local v32       #owner_image:Ljava/lang/String;
    .restart local v33       #owner_name:Ljava/lang/String;
    .restart local v34       #owner_sinaid:I
    .restart local v35       #photo:Ljava/lang/String;
    .restart local v38       #retCode:I
    .restart local v39       #share:Ljava/lang/String;
    .restart local v45       #songlistId:I
    .restart local v46       #songsum:Ljava/lang/String;
    .restart local v47       #str:Ljava/lang/String;
    .restart local v49       #updatetime:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    const-string v51, "Server Return : No match Data"

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 836
    const/16 v50, -0x7

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 837
    .local v16, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 854
    .end local v2           #JsonArray:Lorg/json/JSONArray;
    .end local v5           #collect:Ljava/lang/String;
    .end local v6           #createtime:Ljava/lang/String;
    .end local v7           #detail_url:Ljava/lang/String;
    .end local v9           #hot:Ljava/lang/String;
    .end local v12           #intro:Ljava/lang/String;
    .end local v13           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v15           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v16           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v17           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mJSONObject2:Lorg/json/JSONObject;
    .end local v23           #mOwner:Lorg/json/JSONObject;
    .end local v27           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v30           #mid:I
    .end local v31           #name:Ljava/lang/String;
    .end local v32           #owner_image:Ljava/lang/String;
    .end local v33           #owner_name:Ljava/lang/String;
    .end local v34           #owner_sinaid:I
    .end local v35           #photo:Ljava/lang/String;
    .end local v38           #retCode:I
    .end local v39           #share:Ljava/lang/String;
    .end local v45           #songlistId:I
    .end local v46           #songsum:Ljava/lang/String;
    .end local v47           #str:Ljava/lang/String;
    .end local v49           #updatetime:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 857
    .local v8, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 858
    const/16 v50, -0x3

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 859
    .local v14, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14

    .line 840
    .end local v8           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v14           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v13       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v15       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v18       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #mJSONObject:Lorg/json/JSONObject;
    .restart local v27       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v38       #retCode:I
    .restart local v47       #str:Ljava/lang/String;
    :cond_5
    const/16 v50, -0x1

    move/from16 v0, v38

    move/from16 v1, v50

    if-ne v0, v1, :cond_6

    .line 842
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    const-string v51, "Server Return : parameter error"

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 843
    const/16 v50, -0x1

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 844
    .restart local v16       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 861
    .end local v13           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v15           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v16           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v17           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #mJSONObject:Lorg/json/JSONObject;
    .end local v27           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v38           #retCode:I
    .end local v47           #str:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 864
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 865
    const/16 v50, -0x3

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 866
    .local v19, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 846
    .end local v8           #e:Ljava/io/IOException;
    .end local v19           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v13       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v15       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v18       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #mJSONObject:Lorg/json/JSONObject;
    .restart local v27       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v38       #retCode:I
    .restart local v47       #str:Ljava/lang/String;
    :cond_6
    const/16 v50, -0x2

    move/from16 v0, v38

    move/from16 v1, v50

    if-ne v0, v1, :cond_3

    .line 848
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    const-string v51, "Server Return : Get Songlist failed"

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 849
    const/16 v50, -0x5

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 850
    .restart local v16       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 868
    .end local v13           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v15           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v16           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v17           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #mJSONObject:Lorg/json/JSONObject;
    .end local v27           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v38           #retCode:I
    .end local v47           #str:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 871
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 872
    const/16 v50, -0x4

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v20

    .line 873
    .local v20, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v20
.end method

.method public removeFromFavourite(I)Z
    .locals 27
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1127
    if-nez p1, :cond_0

    .line 1129
    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1130
    .local v13, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 1135
    .end local v13           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v14

    .line 1137
    .local v14, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual {v14}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v24

    const-string v25, "xtoken"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1138
    .local v23, xtoken:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "&"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1139
    .local v20, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "oauth_token:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1140
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1141
    .local v21, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "oauth_token_secret:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1143
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1144
    .local v8, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.connection.timeout"

    const/16 v26, 0x1770

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1145
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.socket.timeout"

    const/16 v26, 0x1770

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1146
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .local v16, mStrb:Ljava/lang/StringBuilder;
    const-string v22, "http://music.weibo.com/yueku/cooperate/htc/song_collect_del.php"

    .line 1149
    .local v22, strUrl:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v24, "?"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oauth_token="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string v24, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oauth_token_secret="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    const-string v24, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "songid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HttpRequest:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1158
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v4, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v8, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1160
    .local v5, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 1162
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1165
    .local v6, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    .local v17, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, str:Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_1

    .line 1169
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 1172
    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v12, mJSONObject:Lorg/json/JSONObject;
    const-string v24, "retCode"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1174
    .local v18, retCode:I
    if-nez v18, :cond_2

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    const-string v25, "Server Return : Remove successful"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1177
    const/16 v24, 0x1

    .line 1215
    .end local v6           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v18           #retCode:I
    .end local v19           #str:Ljava/lang/String;
    :goto_1
    return v24

    .line 1181
    .restart local v6       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v18       #retCode:I
    .restart local v19       #str:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    const-string v25, "Server Return : Remove failed"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1182
    const/16 v24, -0x5

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 1183
    .local v9, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1187
    .end local v4           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v12           #mJSONObject:Lorg/json/JSONObject;
    .end local v14           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v16           #mStrb:Ljava/lang/StringBuilder;
    .end local v17           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v18           #retCode:I
    .end local v19           #str:Ljava/lang/String;
    .end local v20           #str1:Ljava/lang/String;
    .end local v21           #str2:Ljava/lang/String;
    .end local v22           #strUrl:Ljava/lang/String;
    .end local v23           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1190
    .local v3, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 1191
    const/16 v24, -0x6

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 1192
    .local v15, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15

    .line 1194
    .end local v3           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v15           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v2

    .line 1197
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1198
    const/16 v24, -0x3

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v7

    .line 1199
    .local v7, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v7

    .line 1201
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v7           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_2
    move-exception v2

    .line 1204
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1205
    const/16 v24, -0x3

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 1206
    .local v10, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10

    .line 1208
    .end local v2           #e:Ljava/io/IOException;
    .end local v10           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_3
    move-exception v2

    .line 1211
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1212
    const/16 v24, -0x4

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1213
    .local v11, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 1215
    .end local v2           #e:Lorg/json/JSONException;
    .end local v11           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v4       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v16       #mStrb:Ljava/lang/StringBuilder;
    .restart local v20       #str1:Ljava/lang/String;
    .restart local v21       #str2:Ljava/lang/String;
    .restart local v22       #strUrl:Ljava/lang/String;
    .restart local v23       #xtoken:Ljava/lang/String;
    :cond_3
    const/16 v24, 0x0

    goto :goto_1
.end method

.method public requestLogin()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "request login..."

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-static {v0, v1}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "start add account..."

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    iget-object v5, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/htc/music/online/sinamusic/SSinaEngine$1;

    invoke-direct {v6, p0}, Lcom/htc/music/online/sinamusic/SSinaEngine$1;-><init>(Lcom/htc/music/online/sinamusic/SSinaEngine;)V

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 106
    :cond_0
    return-void
.end method

.method public requestLogout()V
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v2, "request Logout..."

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->getGoogleAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 116
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    new-instance v2, Lcom/htc/music/online/sinamusic/SSinaEngine$2;

    invoke-direct {v2, p0}, Lcom/htc/music/online/sinamusic/SSinaEngine$2;-><init>(Lcom/htc/music/online/sinamusic/SSinaEngine;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 137
    :cond_0
    return-void
.end method

.method public searchAlbum(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .locals 33
    .parameter "orgAlbumName"
    .parameter "orgSingerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "[isOnlineExist] + Begin"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "songlistName:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "singerName:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1449
    new-instance v24, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    invoke-direct/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;-><init>()V

    .line 1450
    .local v24, mWrapperSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1454
    :try_start_0
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1455
    .local v12, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.connection.timeout"

    const/16 v32, 0x1770

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1456
    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.socket.timeout"

    const/16 v32, 0x1770

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1458
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1459
    .local v22, mStrb:Ljava/lang/StringBuilder;
    const-string v28, "http://music.weibo.com/yueku/cooperate/htc/search.php"

    .line 1460
    .local v28, strUrl:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    const-string v30, "?"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    const-string v30, "type=album"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    const-string v30, "&"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "key="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    const-string v32, "%20"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "HttpRequest:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1469
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v14, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v12, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 1472
    .local v15, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    const/16 v31, 0xc8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 1474
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v30, Ljava/io/InputStreamReader;

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1477
    .local v10, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1478
    .local v23, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    .local v27, str:Ljava/lang/String;
    :goto_0
    if-eqz v27, :cond_0

    .line 1480
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .line 1483
    :cond_0
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v18, mJSONObject:Lorg/json/JSONObject;
    const-string v30, "retCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1485
    .local v25, retCode:I
    if-nez v25, :cond_6

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Return data Successful"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1489
    const-string v30, "Content"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 1491
    .local v19, mJSONObject2:Lorg/json/JSONObject;
    if-nez v19, :cond_1

    .line 1493
    const/16 v30, -0x4

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 1494
    .local v17, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1556
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v14           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v17           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v19           #mJSONObject2:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v27           #str:Ljava/lang/String;
    .end local v28           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1559
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 1560
    const/16 v30, -0x4

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 1561
    .restart local v17       #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 1497
    .end local v8           #e:Lorg/json/JSONException;
    .end local v17           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v19       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v25       #retCode:I
    .restart local v27       #str:Ljava/lang/String;
    .restart local v28       #strUrl:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v30, "total"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 1498
    .local v29, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "total:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1500
    const-string v30, "items"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1501
    .local v3, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v30

    if-lez v30, :cond_5

    .line 1503
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_4

    .line 1505
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 1507
    .local v21, mSongJSONObject:Lorg/json/JSONObject;
    const-string v30, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1508
    .local v4, albumId:I
    const-string v30, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1509
    .local v6, albumName:Ljava/lang/String;
    const-string v30, "albumImage"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1510
    .local v5, albumImage:Ljava/lang/String;
    const-string v30, "singer"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1511
    .local v26, singerName:Ljava/lang/String;
    const-string v30, "detail_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1512
    .local v7, detail_url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "-----i----:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "albumId:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "albumname:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "singer:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "albumImage:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "detail_url:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1519
    if-eqz v4, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Find match song"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1522
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistId(I)V

    .line 1523
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistName(Ljava/lang/String;)V

    .line 1526
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistOwnerName(Ljava/lang/String;)V

    .line 1527
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistPhoto(Ljava/lang/String;)V

    .line 1528
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistDetailUrl(Ljava/lang/String;)V

    .line 1583
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v4           #albumId:I
    .end local v5           #albumImage:Ljava/lang/String;
    .end local v6           #albumName:Ljava/lang/String;
    .end local v7           #detail_url:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v19           #mJSONObject2:Lorg/json/JSONObject;
    .end local v21           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v26           #singerName:Ljava/lang/String;
    .end local v27           #str:Ljava/lang/String;
    .end local v29           #total:I
    :cond_2
    :goto_2
    return-object v24

    .line 1503
    .restart local v3       #JsonArray:Lorg/json/JSONArray;
    .restart local v4       #albumId:I
    .restart local v5       #albumImage:Ljava/lang/String;
    .restart local v6       #albumName:Ljava/lang/String;
    .restart local v7       #detail_url:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v19       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v21       #mSongJSONObject:Lorg/json/JSONObject;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v25       #retCode:I
    .restart local v26       #singerName:Ljava/lang/String;
    .restart local v27       #str:Ljava/lang/String;
    .restart local v29       #total:I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1532
    .end local v4           #albumId:I
    .end local v5           #albumImage:Ljava/lang/String;
    .end local v6           #albumName:Ljava/lang/String;
    .end local v7           #detail_url:Ljava/lang/String;
    .end local v21           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v26           #singerName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Cannot find match song"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1563
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v9           #i:I
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v14           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v19           #mJSONObject2:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v27           #str:Ljava/lang/String;
    .end local v28           #strUrl:Ljava/lang/String;
    .end local v29           #total:I
    :catch_1
    move-exception v8

    .line 1566
    .local v8, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1567
    const/16 v30, -0x3

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1568
    .local v11, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 1537
    .end local v8           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v11           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v3       #JsonArray:Lorg/json/JSONArray;
    .restart local v10       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v19       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v25       #retCode:I
    .restart local v27       #str:Ljava/lang/String;
    .restart local v28       #strUrl:Ljava/lang/String;
    .restart local v29       #total:I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : No match Data"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1538
    const/16 v30, -0x7

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1539
    .local v13, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1570
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v14           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v19           #mJSONObject2:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v27           #str:Ljava/lang/String;
    .end local v28           #strUrl:Ljava/lang/String;
    .end local v29           #total:I
    :catch_2
    move-exception v8

    .line 1573
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 1574
    const/16 v30, -0x3

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 1575
    .local v16, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16

    .line 1542
    .end local v8           #e:Ljava/io/IOException;
    .end local v16           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v25       #retCode:I
    .restart local v27       #str:Ljava/lang/String;
    .restart local v28       #strUrl:Ljava/lang/String;
    :cond_6
    const/16 v30, -0x1

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 1544
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : parameter error"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1545
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1546
    .restart local v13       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 1548
    .end local v13           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_7
    const/16 v30, -0x2

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : Get Songlist failed"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1551
    const/16 v30, -0x5

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1552
    .restart local v13       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1580
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v14           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v27           #str:Ljava/lang/String;
    .end local v28           #strUrl:Ljava/lang/String;
    :cond_8
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v20

    .line 1581
    .local v20, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v20
.end method

.method public searchSong(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .locals 34
    .parameter "orgSongName"
    .parameter "orgSingerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "[isOnlineExist] + Begin"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "songName:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "singerName:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1293
    new-instance v22, Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    invoke-direct/range {v22 .. v22}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;-><init>()V

    .line 1294
    .local v22, mWrapperSongDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1298
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1299
    invoke-static/range {p2 .. p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1300
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1301
    .local v10, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.connection.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1302
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.socket.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1304
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    .local v20, mStrb:Ljava/lang/StringBuilder;
    const-string v29, "http://music.weibo.com/yueku/cooperate/htc/search.php"

    .line 1306
    .local v29, strUrl:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    const-string v31, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const-string v31, "type=song"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    const-string v31, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "key="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    const-string v33, "%20"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "HttpRequest:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1315
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v12, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v10, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 1318
    .local v13, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 1320
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/InputStreamReader;

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1323
    .local v8, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1324
    .local v21, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, str:Ljava/lang/String;
    :goto_0
    if-eqz v28, :cond_0

    .line 1326
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    goto :goto_0

    .line 1329
    :cond_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v16, mJSONObject:Lorg/json/JSONObject;
    const-string v31, "retCode"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 1331
    .local v23, retCode:I
    if-nez v23, :cond_6

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Return data Successful"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1335
    const-string v31, "Content"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 1337
    .local v17, mJSONObject2:Lorg/json/JSONObject;
    if-nez v17, :cond_1

    .line 1339
    const/16 v31, -0x4

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 1340
    .local v15, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1405
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mJSONObject2:Lorg/json/JSONObject;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v28           #str:Ljava/lang/String;
    .end local v29           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1408
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1409
    const/16 v31, -0x4

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 1410
    .restart local v15       #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15

    .line 1343
    .end local v6           #e:Lorg/json/JSONException;
    .end local v15           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v28       #str:Ljava/lang/String;
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v31, "total"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 1344
    .local v30, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "total:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1346
    const-string v31, "items"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1347
    .local v3, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v31

    if-lez v31, :cond_5

    .line 1349
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v7, v0, :cond_4

    .line 1351
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 1353
    .local v19, mSongJSONObject:Lorg/json/JSONObject;
    const-string v31, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1354
    .local v25, songId:I
    const-string v31, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1355
    .local v27, songName:Ljava/lang/String;
    const-string v31, "songImage"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1356
    .local v26, songImage:Ljava/lang/String;
    const-string v31, "singer"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1357
    .local v24, singerName:Ljava/lang/String;
    const-string v31, "album"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1358
    .local v4, albumName:Ljava/lang/String;
    const-string v31, "detail_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1359
    .local v5, detail_url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "-----i----:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "songId:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "songname:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "singer:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "songImage:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "albumName:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "detail_url:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1367
    if-eqz v25, :cond_3

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Find match song"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1371
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongId(I)V

    .line 1372
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongName(Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSingerName(Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongImage(Ljava/lang/String;)V

    .line 1375
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setAlbumName(Ljava/lang/String;)V

    .line 1376
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongDetailUrl(Ljava/lang/String;)V

    .line 1432
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v4           #albumName:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mJSONObject2:Lorg/json/JSONObject;
    .end local v19           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #singerName:Ljava/lang/String;
    .end local v25           #songId:I
    .end local v26           #songImage:Ljava/lang/String;
    .end local v27           #songName:Ljava/lang/String;
    .end local v28           #str:Ljava/lang/String;
    .end local v30           #total:I
    :cond_2
    :goto_2
    return-object v22

    .line 1349
    .restart local v3       #JsonArray:Lorg/json/JSONArray;
    .restart local v4       #albumName:Ljava/lang/String;
    .restart local v5       #detail_url:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v16       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v19       #mSongJSONObject:Lorg/json/JSONObject;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #singerName:Ljava/lang/String;
    .restart local v25       #songId:I
    .restart local v26       #songImage:Ljava/lang/String;
    .restart local v27       #songName:Ljava/lang/String;
    .restart local v28       #str:Ljava/lang/String;
    .restart local v30       #total:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1381
    .end local v4           #albumName:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v19           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v24           #singerName:Ljava/lang/String;
    .end local v25           #songId:I
    .end local v26           #songImage:Ljava/lang/String;
    .end local v27           #songName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Cannot find match song"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1412
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v7           #i:I
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mJSONObject2:Lorg/json/JSONObject;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v28           #str:Ljava/lang/String;
    .end local v29           #strUrl:Ljava/lang/String;
    .end local v30           #total:I
    :catch_1
    move-exception v6

    .line 1415
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1416
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 1417
    .local v9, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 1386
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v9           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v3       #JsonArray:Lorg/json/JSONArray;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v28       #str:Ljava/lang/String;
    .restart local v29       #strUrl:Ljava/lang/String;
    .restart local v30       #total:I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : No match Data"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1387
    const/16 v31, -0x7

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1388
    .local v11, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1419
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v12           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mJSONObject2:Lorg/json/JSONObject;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v28           #str:Ljava/lang/String;
    .end local v29           #strUrl:Ljava/lang/String;
    .end local v30           #total:I
    :catch_2
    move-exception v6

    .line 1422
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1423
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 1424
    .local v14, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14

    .line 1391
    .end local v6           #e:Ljava/io/IOException;
    .end local v14           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #mJSONObject:Lorg/json/JSONObject;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v28       #str:Ljava/lang/String;
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_6
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 1393
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : parameter error"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1394
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1395
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 1397
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_7
    const/16 v31, -0x2

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : Get Songlist failed"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1400
    const/16 v31, -0x5

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1401
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1429
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v12           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v28           #str:Ljava/lang/String;
    .end local v29           #strUrl:Ljava/lang/String;
    :cond_8
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v18

    .line 1430
    .local v18, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v18
.end method
