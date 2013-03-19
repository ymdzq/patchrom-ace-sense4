.class public Lcom/htc/music/online/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final COLLECTION_AMOUNT_PER_PAGE:I = 0xf

.field public static final CURRENT_CUSTOMIZATION_TYPE:I = 0x1

.field public static final CUSTOMIZATION_TYPE_NONE:I = 0x1

.field public static final CUSTOMIZATION_TYPE_SINA:I = 0x2

.field public static final KEY_FAVORITE_SONG:Ljava/lang/String; = "favorite_song"

.field public static final KEY_IS_NEED_ASYNC_LOADING:Ljava/lang/String; = "need_async_loading"

.field public static final KEY_RELATED_WEIBO:Ljava/lang/String; = "related_weibo"

.field public static final KEY_SHARE_ALBUM:Ljava/lang/String; = "music.intent.extra.album"

.field public static final KEY_SHARE_ARTIST:Ljava/lang/String; = "music.intent.extra.artist"

.field public static final KEY_SHARE_IMAGE:Ljava/lang/String; = "music.intent.extra.image"

.field public static final KEY_SHARE_IS_COLLECTION:Ljava/lang/String; = "music.intent.extra.is_collection"

.field public static final KEY_SHARE_REAL_URL:Ljava/lang/String; = "music.intent.extra.real_url"

.field public static final KEY_SHARE_TRACK:Ljava/lang/String; = "music.intent.extra.track"

.field public static final KEY_SHARE_URL:Ljava/lang/String; = "music.intent.extra.share_url"

.field public static final KEY_SONGLIST_URL:Ljava/lang/String; = "songlist_url"

.field public static final KEY_SONG_DETAIL:Ljava/lang/String; = "song_detail"

.field public static final KEY_SONG_ID:Ljava/lang/String; = "song_id"

.field public static final KEY_USE_COMMON_TEXT:Ljava/lang/String; = "use_common_text"

.field public static final MSG_ACCOUNT_CHANGE:I = 0x186a1

.field public static final MSG_CANCEL_LOGIN:I = 0x2714

.field public static final MSG_GOTO_LOGIN:I = 0x2715

.field public static final MSG_HIDE_LOGIN_LAYOUT:I = 0x186a3

.field public static final MSG_HIDE_PROGRESS_BAR:I = 0x2717

.field public static final MSG_SHOW_LOGIN_LAYOUT:I = 0x186a2

.field public static final MSG_SHOW_PROGRESS_BAR:I = 0x2716

.field private static final NETWORK_3GWAP:Ljava/lang/String; = "3gwap"

.field public static final REQ_CHECK_LOGIN:I = 0xca

.field public static final REQ_GET_COLLECTION_DETAIL:I = 0xcb

.field public static final REQ_GET_INIT_COLLECTION_LIST:I = 0xc8

.field public static final REQ_GET_MY_INIT_COLLECTION_LIST:I = 0xd1

.field public static final REQ_GET_MY_NEXT_COLLECTION_LIST:I = 0xd2

.field public static final REQ_GET_NEXT_COLLECTION_LIST:I = 0xcd

.field public static final REQ_GET_SONG_DETAIL:I = 0xcf

.field public static final REQ_GOTO_LOGIN:I = 0xc9

.field public static final REQ_RELATED_WEIBO:I = 0xce

.field public static final REQ_RE_LOGIN:I = 0xd0

.field public static final REQ_SHARE_TO_WEIBO:I = 0xcc

.field public static final RET_COLLECTION_DETAIL:I = 0x67

.field public static final RET_COLLECTION_LIST:I = 0x66

.field public static final RET_NEXT_COLLECTION_LIST:I = 0x68

.field public static final RET_NO_NETWORK_CONN:I = 0x6b

.field public static final RET_SNS_EXCEPTION:I = 0x69

.field public static final RET_SONG_DETAIL:I = 0x6a

.field public static final RET_USER_LOGGED_IN:I = 0x65

.field public static final RET_USER_LOGOUT:I = 0x6c

.field public static final RET_USER_NOT_LOGIN:I = 0x64

.field public static SINA_TEST_CUSTOMIZATION_FLAG:Z = false

.field public static SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String; = null

.field public static SINA_WEIBO_SHARE_CLASS_NAME:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "[Util]"

.field public static TEST_FAVORITE_FEATURE_FLAG:Z

.field private static currentCollectionPage:I

.field private static loadingDialog:Lcom/htc/app/HtcProgressDialog;

.field private static querylOnlineListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/music/online/Util;->SINA_TEST_CUSTOMIZATION_FLAG:Z

    .line 65
    sput-boolean v1, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    .line 66
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    sput-object v0, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    .line 67
    const-string v0, "com.htc.friendstream.sinaweiboplugin.share.SSnsShare"

    sput-object v0, Lcom/htc/music/online/Util;->SINA_WEIBO_SHARE_CLASS_NAME:Ljava/lang/String;

    .line 203
    sput v1, Lcom/htc/music/online/Util;->currentCollectionPage:I

    .line 501
    new-instance v0, Lcom/htc/music/online/Util$1;

    invoke-direct {v0}, Lcom/htc/music/online/Util$1;-><init>()V

    sput-object v0, Lcom/htc/music/online/Util;->querylOnlineListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/htc/music/online/Util;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/htc/music/online/Util;->gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static addToFavorites(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 6
    .parameter "ctx"
    .parameter "songId"
    .parameter "songName"

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-static {p0}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v1

    .line 89
    .local v1, engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    invoke-interface {v1, p1}, Lcom/htc/music/online/sinamusic/ISinaEngine;->addToFavourite(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, toastText:Ljava/lang/StringBuffer;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v3, 0x1

    .line 103
    .end local v2           #toastText:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return v3

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static check3GWap(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 1234
    invoke-static {p0}, Lcom/htc/music/online/Util;->is3GWap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    invoke-static {p0}, Lcom/htc/music/online/Util;->wapNetworkAction(Landroid/app/Activity;)V

    .line 1236
    const/4 v0, 0x1

    .line 1238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkEnabledFavoriteTestFeatrue()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/htc_favorite.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, sinaConfigFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    .line 116
    return-void
.end method

.method public static checkEnabledSinaTestFeature()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/htc_music.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, sinaConfigFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/htc/music/online/Util;->SINA_TEST_CUSTOMIZATION_FLAG:Z

    .line 110
    return-void
.end method

.method public static checkNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    invoke-static {p0}, Lcom/htc/music/online/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, p0

    .line 422
    check-cast v0, Landroid/app/Activity;

    .line 423
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 424
    invoke-static {v0, v3}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 425
    .local v1, noNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 438
    .end local v1           #noNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    :goto_0
    return v2

    .line 429
    :cond_1
    const-string v3, "[Util]"

    const-string v4, "[checkNetworkAvailable] activity is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    move-object v0, p0

    .line 433
    check-cast v0, Landroid/app/Activity;

    .line 434
    .restart local v0       #activity:Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/htc/music/online/Util;->check3GWap(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    .line 438
    goto :goto_0
.end method

.method public static checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;
    .locals 4
    .parameter "context"

    .prologue
    .line 442
    invoke-static {p0}, Lcom/htc/music/online/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, p0

    .line 444
    check-cast v0, Landroid/app/Activity;

    .line 445
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 446
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 447
    .local v1, noNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 455
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #noNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    :goto_0
    return-object v1

    .line 452
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    const-string v2, "[Util]"

    const-string v3, "[checkNetworkAvailable] activity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap1"
    .parameter "bitmap2"
    .parameter "ctrlWidth"
    .parameter "ctrlHeight"

    .prologue
    const/4 v1, 0x0

    .line 1295
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1296
    :cond_0
    const-string v2, "[Util]"

    const-string v3, "[composeBitmap]Original bitmap is not usable"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1316
    :cond_1
    :goto_0
    return-object v0

    .line 1299
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1300
    :cond_3
    const-string v2, "[Util]"

    const-string v3, "[composeBitmap]Source icon is not usable"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1301
    goto :goto_0

    .line 1303
    :cond_4
    invoke-static {p0, p2, p3}, Lcom/htc/music/online/Util;->copyBitmapAndScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1304
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    move-object v0, v1

    .line 1305
    goto :goto_0

    .line 1307
    :cond_5
    invoke-static {v0, p1}, Lcom/htc/music/online/Util;->drawIndicatorToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1309
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1310
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1312
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1313
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private static copyBitmapAndScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1320
    const/4 v7, 0x0

    .line 1322
    .local v7, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1323
    .local v3, bgBMPWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1324
    .local v4, bgBMPHeight:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 1326
    .local v8, config:Landroid/graphics/Bitmap$Config;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 1327
    .local v9, x:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v10, v0, v2

    .line 1329
    .local v10, y:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1330
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    .line 1331
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1332
    invoke-virtual {v7, v8, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1334
    return-object v7
.end method

.method public static doDataFeeCheck(Landroid/app/Activity;I)V
    .locals 4
    .parameter "activity"
    .parameter "reqestCode"

    .prologue
    .line 1165
    if-nez p0, :cond_0

    .line 1166
    const-string v2, "[Util]"

    const-string v3, "[doDataFeeCheck] activity cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :goto_0
    return-void

    .line 1170
    :cond_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/htc/music/online/DataFeeCheckActivity;->ACTION_DATA_FEE_CHECK:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v1, onlineCheckIntent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "[Util]"

    const-string v3, "DataFeeCheckActivity not found."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static drawDefaultSourceIconToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 1348
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1349
    :cond_0
    const-string v3, "[Util]"

    const-string v4, "[drawSourceIconToBitmap]Original bitmap is not usable"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :goto_0
    return-object v1

    .line 1352
    :cond_1
    if-nez p0, :cond_2

    .line 1353
    const-string v3, "[Util]"

    const-string v4, "[drawSourceIconToBitmap]context = null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1357
    .local v2, width:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1358
    .local v0, height:I
    invoke-static {p0, p1, v2, v0}, Lcom/htc/music/online/Util;->drawSourceIconToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1359
    .local v1, retBmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static drawIndicatorToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmap"
    .parameter "indicator"

    .prologue
    .line 1338
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1339
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1340
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1341
    .local v1, h:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1342
    .local v2, h_2:I
    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, p1, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1343
    const/16 v4, 0x1f

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 1344
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1345
    return-void
.end method

.method private static drawSourceIconToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "bitmap"
    .parameter "scaleWidth"
    .parameter "scaleHeight"

    .prologue
    .line 1363
    if-nez p1, :cond_0

    .line 1364
    const/4 v0, 0x0

    .line 1371
    :goto_0
    return-object v0

    .line 1366
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020045

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1369
    .local v1, sourceIcon:Landroid/graphics/Bitmap;
    invoke-static {p1, v1, p2, p3}, Lcom/htc/music/online/Util;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1371
    .local v0, retBmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static findRootParent(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 4
    .parameter "activity"

    .prologue
    .line 744
    if-nez p0, :cond_1

    .line 745
    const-string v2, "[Util]"

    const-string v3, "[findRootParent] activity is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 p0, 0x0

    .line 757
    .end local p0
    .local v0, rootParent:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object p0

    .line 748
    .end local v0           #rootParent:Landroid/app/Activity;
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 749
    .restart local v0       #rootParent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 752
    .local v1, temp:Landroid/app/Activity;
    :goto_1
    if-eqz v1, :cond_2

    .line 753
    move-object v0, v1

    .line 754
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 757
    goto :goto_0
.end method

.method public static getAlbumArtOptions(Landroid/content/Context;ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 3
    .parameter "context"
    .parameter "hasIndicator"
    .parameter "bmp"
    .parameter "sourceIcon"

    .prologue
    .line 1147
    if-nez p0, :cond_0

    .line 1148
    const-string v1, "[Util]"

    const-string v2, "[getAlbumArtOptions] context cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const/4 v0, 0x0

    .line 1161
    :goto_0
    return-object v0

    .line 1151
    :cond_0
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    .line 1152
    .local v0, options:Lcom/htc/graphics/drawable/UrlDrawable$Options;
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1153
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->setOverlayPos(I)V

    .line 1154
    invoke-virtual {v0, p3}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->setOverlayBitmap(Landroid/graphics/Bitmap;)V

    .line 1156
    :cond_1
    if-eqz p2, :cond_2

    .line 1157
    invoke-virtual {v0, p2}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1159
    :cond_2
    const-string v1, "[Util]"

    const-string v2, "[getAlbumArtOptions] bmp is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppInfoIncludeDisable(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v0, 0x0

    .line 1069
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1070
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 1071
    const-string v4, "[Util]"

    const-string v5, "[getAppInfo] pm is null!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_0
    :goto_0
    return-object v0

    .line 1075
    :cond_1
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1076
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1080
    const/4 v0, 0x0

    .line 1082
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/16 v4, 0x200

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v1

    .line 1084
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBundleFromSong(Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "song"
    .parameter "context"

    .prologue
    .line 761
    if-nez p1, :cond_1

    .line 762
    const-string v7, "[Util]"

    const-string v8, "[getBundleFromSong] context is null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v1, 0x0

    .line 820
    :cond_0
    :goto_0
    return-object v1

    .line 765
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 766
    .local v1, shareMusicBundle:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v4

    .line 769
    .local v4, songId:I
    const-string v7, "[Util]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "songId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v7, "song_id"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, songName:Ljava/lang/String;
    const-string v7, "[Util]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "songName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    if-eqz v6, :cond_2

    .line 775
    const-string v7, "music.intent.extra.track"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSingerName()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, singerName:Ljava/lang/String;
    const-string v7, "[Util]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "singerName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    if-eqz v2, :cond_3

    .line 783
    const-string v7, "music.intent.extra.artist"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongImage()Ljava/lang/String;

    move-result-object v5

    .line 790
    .local v5, songImage:Ljava/lang/String;
    const-string v7, "[Util]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "songImage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    if-eqz v5, :cond_4

    .line 792
    const-string v7, "music.intent.extra.image"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :goto_3
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongDetailUrl()Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, songDetailUrl:Ljava/lang/String;
    const-string v7, "[Util]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "songDetailUrl = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    if-eqz v3, :cond_5

    .line 800
    const-string v7, "music.intent.extra.share_url"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :goto_4
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSong;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, albmumName:Ljava/lang/String;
    const-string v7, "[Util]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "albumName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    if-eqz v0, :cond_6

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 808
    const-string v7, "music.intent.extra.album"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 777
    .end local v0           #albmumName:Ljava/lang/String;
    .end local v2           #singerName:Ljava/lang/String;
    .end local v3           #songDetailUrl:Ljava/lang/String;
    .end local v5           #songImage:Ljava/lang/String;
    :cond_2
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 785
    .restart local v2       #singerName:Ljava/lang/String;
    :cond_3
    const-string v7, "music.intent.extra.artist"

    const v8, 0x7f07004d

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] singerName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 794
    .restart local v5       #songImage:Ljava/lang/String;
    :cond_4
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songImage is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 802
    .restart local v3       #songDetailUrl:Ljava/lang/String;
    :cond_5
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songDetailUrl is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 810
    .restart local v0       #albmumName:Ljava/lang/String;
    :cond_6
    const-string v7, "music.intent.extra.album"

    const v8, 0x7f07004e

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] albmumName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getBundleFromSongDetail(Lcom/htc/music/online/sinamusic/WrapperSongDetail;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 9
    .parameter "songDetail"
    .parameter "context"

    .prologue
    .line 824
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 825
    .local v1, shareMusicBundle:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongId()I

    move-result v4

    .line 828
    .local v4, songId:I
    const-string v7, "song_id"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 830
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongName()Ljava/lang/String;

    move-result-object v6

    .line 831
    .local v6, songName:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 832
    const-string v7, "music.intent.extra.track"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSingerName()Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, singerName:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 838
    const-string v7, "music.intent.extra.artist"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongImage()Ljava/lang/String;

    move-result-object v5

    .line 844
    .local v5, songImage:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 845
    const-string v7, "music.intent.extra.image"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongDetailUrl()Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, songDetailUrl:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 851
    const-string v7, "music.intent.extra.share_url"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :goto_3
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, albmumName:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 857
    const-string v7, "music.intent.extra.album"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .end local v0           #albmumName:Ljava/lang/String;
    .end local v2           #singerName:Ljava/lang/String;
    .end local v3           #songDetailUrl:Ljava/lang/String;
    .end local v4           #songId:I
    .end local v5           #songImage:Ljava/lang/String;
    .end local v6           #songName:Ljava/lang/String;
    :cond_0
    :goto_4
    return-object v1

    .line 834
    .restart local v4       #songId:I
    .restart local v6       #songName:Ljava/lang/String;
    :cond_1
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 840
    .restart local v2       #singerName:Ljava/lang/String;
    :cond_2
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] singerName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v7, "music.intent.extra.artist"

    const v8, 0x7f07004d

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 847
    .restart local v5       #songImage:Ljava/lang/String;
    :cond_3
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songImage is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 853
    .restart local v3       #songDetailUrl:Ljava/lang/String;
    :cond_4
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songDetailUrl is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 859
    .restart local v0       #albmumName:Ljava/lang/String;
    :cond_5
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] albmumName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v7, "music.intent.extra.album"

    const v8, 0x7f07004e

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static getBundleFromSongList(Lcom/htc/music/online/sinamusic/WrapperSonglist;)Landroid/os/Bundle;
    .locals 7
    .parameter "songlist"

    .prologue
    .line 910
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 911
    .local v0, shareMusicBundle:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 913
    const-string v5, "music.intent.extra.is_collection"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 915
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistName()Ljava/lang/String;

    move-result-object v4

    .line 916
    .local v4, songName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 917
    const-string v5, "music.intent.extra.track"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistCreater()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, singerName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 924
    const-string v5, "music.intent.extra.artist"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistImage()Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, songImage:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 931
    const-string v5, "music.intent.extra.image"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->getSonglistDetailUrl()Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, songDetailUrl:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 938
    const-string v5, "music.intent.extra.share_url"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    .end local v1           #singerName:Ljava/lang/String;
    .end local v2           #songDetailUrl:Ljava/lang/String;
    .end local v3           #songImage:Ljava/lang/String;
    .end local v4           #songName:Ljava/lang/String;
    :cond_0
    :goto_3
    return-object v0

    .line 919
    .restart local v4       #songName:Ljava/lang/String;
    :cond_1
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songName is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    .restart local v1       #singerName:Ljava/lang/String;
    :cond_2
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] singerName is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 933
    .restart local v3       #songImage:Ljava/lang/String;
    :cond_3
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songImage is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 940
    .restart local v2       #songDetailUrl:Ljava/lang/String;
    :cond_4
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songDetailUrl is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getBundleFromSongListDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Landroid/os/Bundle;
    .locals 7
    .parameter "songlistDetail"

    .prologue
    .line 873
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 874
    .local v0, shareMusicBundle:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 876
    const-string v5, "music.intent.extra.is_collection"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 878
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistName()Ljava/lang/String;

    move-result-object v4

    .line 879
    .local v4, songName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 880
    const-string v5, "music.intent.extra.track"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistOwnerName()Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, singerName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 887
    const-string v5, "music.intent.extra.artist"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistPhoto()Ljava/lang/String;

    move-result-object v3

    .line 893
    .local v3, songImage:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 894
    const-string v5, "music.intent.extra.image"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistDetailUrl()Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, songDetailUrl:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 901
    const-string v5, "music.intent.extra.share_url"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .end local v1           #singerName:Ljava/lang/String;
    .end local v2           #songDetailUrl:Ljava/lang/String;
    .end local v3           #songImage:Ljava/lang/String;
    .end local v4           #songName:Ljava/lang/String;
    :cond_0
    :goto_3
    return-object v0

    .line 882
    .restart local v4       #songName:Ljava/lang/String;
    :cond_1
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songName is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    .restart local v1       #singerName:Ljava/lang/String;
    :cond_2
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] singerName is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 896
    .restart local v3       #songImage:Ljava/lang/String;
    :cond_3
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songImage is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 903
    .restart local v2       #songDetailUrl:Ljava/lang/String;
    :cond_4
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songDetailUrl is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static getConvertedTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    .line 1272
    const/4 v0, 0x0

    .line 1273
    .local v0, convertedTime:Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1274
    .local v3, t:I
    div-int/lit8 v1, v3, 0x3c

    .line 1275
    .local v1, min:I
    rem-int/lit8 v2, v3, 0x3c

    .line 1276
    .local v2, sec:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    return-object v0
.end method

.method public static getInstalledApplicationList(Landroid/content/Context;[Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter "filter"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1040
    if-nez p0, :cond_1

    .line 1041
    const-string v4, "[Util]"

    const-string v5, "[getInstalledApplicationList] context cannot be null!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :cond_0
    :goto_0
    return-object v3

    .line 1045
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1046
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 1047
    const-string v4, "[Util]"

    const-string v5, "[getInstalledApplicationList] pm cannot be null!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    :cond_2
    if-nez p1, :cond_3

    .line 1052
    const-string v4, "[Util]"

    const-string v5, "[getInstalledApplicationList] filter cannot be null!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 1059
    :try_start_0
    aget-object v4, p1, v1

    invoke-virtual {v2, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 948
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 949
    .local v0, progressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 950
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 951
    return-object v0
.end method

.method public static getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Lcom/htc/music/online/sinamusic/WrapperSong;
    .locals 16
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"
    .parameter "albumid"
    .parameter "artpath"
    .parameter "context"

    .prologue
    .line 983
    const-string v7, ""

    .line 984
    .local v7, DetailUrl:Ljava/lang/String;
    const-string v8, ""

    .line 985
    .local v8, ShareUrl:Ljava/lang/String;
    const-string v12, ""

    .line 986
    .local v12, onlineArtpath:Ljava/lang/String;
    const/4 v15, 0x0

    .line 987
    .local v15, songid:I
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "url"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "detailurl"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "song_id"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v3, v1

    .line 994
    .local v3, mOnlineCursorCols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 996
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/htc/music/online/OnlineMusicDBHelper$OnlineMediaArt;->ONLINEMEDIA_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p5

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 999
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1000
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1001
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    .line 1002
    .local v9, colCount:I
    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 1003
    .local v13, position:I
    if-lez v9, :cond_0

    if-gez v13, :cond_2

    .line 1004
    :cond_0
    const-string v1, "[Util]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCurrent: cols count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", position = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    const/4 v14, 0x0

    .line 1015
    if-eqz v10, :cond_1

    .line 1016
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1017
    const/4 v10, 0x0

    .line 1029
    .end local v9           #colCount:I
    .end local v13           #position:I
    :cond_1
    :goto_0
    return-object v14

    .line 1007
    .restart local v9       #colCount:I
    .restart local v13       #position:I
    :cond_2
    :try_start_1
    const-string v1, "detailurl"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1008
    const-string v1, "url"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1009
    const-string v1, "song_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1010
    const-string v1, "album_art"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 1015
    .end local v9           #colCount:I
    .end local v13           #position:I
    :cond_3
    if-eqz v10, :cond_4

    .line 1016
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1017
    :goto_1
    const/4 v10, 0x0

    .line 1020
    :cond_4
    new-instance v14, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct {v14}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 1021
    .local v14, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongName(Ljava/lang/String;)V

    .line 1022
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumName(Ljava/lang/String;)V

    .line 1023
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v14, v12}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongImage(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v14, v7}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDetailUrl(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v14, v8}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayUrl(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongId(I)V

    goto :goto_0

    .line 1012
    .end local v14           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :catch_0
    move-exception v11

    .line 1013
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1015
    if-eqz v10, :cond_4

    .line 1016
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1015
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_5

    .line 1016
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1017
    const/4 v10, 0x0

    .line 1015
    :cond_5
    throw v1
.end method

.method public static gotoRelatedWeibo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;)V
    .locals 6
    .parameter "activity"
    .parameter "song"

    .prologue
    .line 955
    if-nez p0, :cond_0

    .line 956
    const-string v3, "[Util]"

    const-string v4, "[gotoRelatedWeibo] activity cannot be null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :goto_0
    return-void

    .line 959
    :cond_0
    if-nez p1, :cond_1

    .line 960
    const-string v3, "[Util]"

    const-string v4, "[gotoRelatedWeibo] song cannot be null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 965
    .local v2, manager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_2

    .line 967
    :try_start_0
    sget-object v3, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 968
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mfsinaweibo://weibosquare/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 969
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, -0x2

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 970
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 972
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 973
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "[Util]"

    const-string v4, "No Sina weibo in device"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 977
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string v3, "[Util]"

    const-string v4, "[gotoRelatedWeibo] manager cannot be null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 678
    if-nez p0, :cond_0

    .line 679
    const-string v3, "[Util]"

    const-string v4, "[gotoShareToSinaWeibo], context is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_0
    return-void

    .line 682
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 683
    .local v2, shareIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v3, "android.intent.category.HTC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 686
    sget-object v3, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/htc/music/online/Util;->SINA_WEIBO_SHARE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 689
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 690
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 693
    :cond_1
    const-string v3, "[Util]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no activity found to match the intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static handleSnsException(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 3
    .parameter "context"
    .parameter "e"
    .parameter "positiveListener"

    .prologue
    const/4 v0, 0x0

    .line 613
    if-nez p1, :cond_0

    .line 614
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]e cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .end local p0
    :goto_0
    return-object v0

    .line 617
    .restart local p0
    :cond_0
    if-nez p2, :cond_1

    .line 618
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]positiveListener cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 645
    :pswitch_0
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)] No Match Data,return is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :pswitch_1
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Network error, please check network connection"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/4 v1, 0x2

    invoke-static {p0, v1, p2}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 628
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 630
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .restart local p0
    :pswitch_2
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Data error, please retry later"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :pswitch_3
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Added failed, please retry"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :pswitch_4
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Invalid parameter, please re-entery this page"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :pswitch_5
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Friendstream error"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :pswitch_6
    const-string v1, "[Util]"

    const-string v2, "[handleSnsException(Context, SnsException, OnClickListener, OnClickListener)]Token error, please re-login"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static handleSnsException(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 2
    .parameter "context"
    .parameter "e"

    .prologue
    .line 573
    if-eqz p1, :cond_0

    .line 575
    sget-object v0, Lcom/htc/music/online/Util;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 576
    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 602
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 579
    .restart local p0
    :pswitch_0
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Network error, please check network connection"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 583
    .restart local p0
    :pswitch_1
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Data error, please retry later"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :pswitch_2
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Added failed, please retry"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :pswitch_3
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Invalid parameter, please re-entery this page"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :pswitch_4
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Friendstream error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :pswitch_5
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Token error, please re-login"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :pswitch_6
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException] No Match Data,return is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public static hasUserLogin(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-static {p0}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v1

    .line 137
    .local v1, engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    if-eqz v1, :cond_1

    .line 139
    :try_start_0
    invoke-interface {v1}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getLoginStatus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const-string v3, "[Util]"

    const-string v4, "Not login"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return v2

    .line 143
    :cond_0
    const-string v3, "[Util]"

    const-string v4, "user has already logged in"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v2, 0x1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "[Util]"

    const-string v4, "checkIfUserLogin(), connection is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static is3GWap(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1212
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1214
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 1215
    const-string v3, "[Util]"

    const-string v4, "mConnMgr==null in is3GWap"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1219
    .local v2, mMobile:Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    .line 1220
    const-string v3, "[Util]"

    const-string v4, "mMobile==null in is3GWap"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1223
    :cond_2
    const/4 v0, 0x0

    .line 1224
    .local v0, flag:Z
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1226
    const-string v3, "3gwap"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1227
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 120
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 122
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 123
    .local v3, mWifi:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 124
    .local v2, mMobile:Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 125
    .local v0, flag:Z
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    :cond_1
    const/4 v0, 0x1

    .line 132
    :cond_2
    return v0
.end method

.method public static isOnlineMode(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 4
    .parameter "service"

    .prologue
    .line 1179
    const/4 v1, 0x0

    .line 1181
    .local v1, isOnline:Z
    if-eqz p0, :cond_0

    .line 1182
    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z

    move-result v1

    .line 1189
    :goto_0
    return v1

    .line 1184
    :cond_0
    const-string v2, "[Util]"

    const-string v3, "[isOnlineMode] service is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V
    .locals 26
    .parameter "context"
    .parameter "requestType"
    .parameter "handler"
    .parameter "bundle"

    .prologue
    .line 207
    invoke-static/range {p0 .. p0}, Lcom/htc/music/online/Util;->hasUserLogin(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1

    const/16 v23, 0xc9

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    const/16 v23, 0xca

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 208
    if-eqz p2, :cond_0

    .line 210
    const/16 v23, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    const/16 v23, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 231
    :cond_2
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v6

    .line 233
    .local v6, engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 235
    :pswitch_1
    if-eqz p2, :cond_0

    .line 238
    const/16 v19, 0x0

    .line 239
    .local v19, songlist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    const/16 v23, 0x1

    sput v23, Lcom/htc/music/online/Util;->currentCollectionPage:I

    .line 241
    :try_start_0
    sget v23, Lcom/htc/music/online/Util;->currentCollectionPage:I

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v6, v0, v1}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getFriendSonglist(II)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 247
    const/16 v23, 0x66

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 223
    .end local v6           #engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    .end local v19           #songlist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/htc/music/online/Util;->checkNetworkAvailable(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 224
    if-eqz p2, :cond_2

    .line 225
    const/16 v23, 0x6b

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 242
    .restart local v6       #engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    .restart local v19       #songlist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :catch_0
    move-exception v5

    .line 243
    .local v5, e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 244
    const/16 v23, 0x69

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 250
    .end local v5           #e:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v19           #songlist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :pswitch_3
    if-eqz p2, :cond_0

    .line 253
    const/4 v12, 0x0

    .line 254
    .local v12, nextSonglist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    sget v23, Lcom/htc/music/online/Util;->currentCollectionPage:I

    add-int/lit8 v22, v23, 0x1

    .line 256
    .local v22, tempPage:I
    :try_start_1
    const-string v23, "[Util]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "get next collection list, list page = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/16 v23, 0xf

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v6, v0, v1}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getFriendSonglist(II)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 263
    const/16 v23, 0x68

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    if-eqz v23, :cond_0

    .line 267
    sput v22, Lcom/htc/music/online/Util;->currentCollectionPage:I

    goto/16 :goto_0

    .line 258
    :catch_1
    move-exception v5

    .line 259
    .restart local v5       #e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/SnsException;->printStackTrace()V

    .line 260
    const/16 v23, 0x69

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 271
    .end local v5           #e:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v12           #nextSonglist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    .end local v22           #tempPage:I
    :pswitch_4
    invoke-interface {v6}, Lcom/htc/music/online/sinamusic/ISinaEngine;->requestLogin()V

    goto/16 :goto_0

    .line 274
    :pswitch_5
    if-nez p2, :cond_3

    .line 275
    const-string v23, "[Util]"

    const-string v24, "[requestSinaAction:REQ_CHECK_LOGIN] handler cannot be null!"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/htc/music/online/Util;->hasUserLogin(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 279
    const-string v23, "[Util]"

    const-string v24, "User not login"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/16 v23, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 282
    :cond_4
    const-string v23, "[Util]"

    const-string v24, "User has login"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/16 v23, 0x65

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 288
    :pswitch_6
    if-nez p2, :cond_5

    .line 289
    const-string v23, "[Util]"

    const-string v24, "[requestSinaAction:REQ_GET_COLLECTION_DETAIL] handler cannot be null!"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_5
    const/4 v4, 0x0

    .line 294
    .local v4, detail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    const-string v23, "songlist_url"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 297
    .local v20, songlistURL:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getSonglistDetail(Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    move-result-object v4

    .line 298
    if-eqz v4, :cond_7

    .line 299
    invoke-virtual {v4}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSongItemlist()Ljava/util/ArrayList;

    move-result-object v18

    .line 300
    .local v18, songList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    if-eqz v18, :cond_6

    .line 302
    const-string v23, "[Util]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "detail songItemlist.size = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 314
    .end local v18           #songList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :goto_1
    const/16 v23, 0x67

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 304
    .restart local v18       #songList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :cond_6
    :try_start_3
    const-string v23, "[Util]"

    const-string v24, "detail songItemlist is null"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 309
    .end local v18           #songList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :catch_2
    move-exception v5

    .line 310
    .restart local v5       #e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 311
    const/16 v23, 0x69

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 307
    .end local v5           #e:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_7
    :try_start_4
    const-string v23, "[Util]"

    const-string v24, "detail is null"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 318
    .end local v4           #detail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .end local v20           #songlistURL:Ljava/lang/String;
    :pswitch_7
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v15, shareIntent:Landroid/content/Intent;
    const-string v23, "android.intent.action.SEND"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v23, "android.intent.category.HTC"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    if-eqz p3, :cond_8

    .line 322
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 324
    :cond_8
    sget-object v23, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    sget-object v24, Lcom/htc/music/online/Util;->SINA_WEIBO_SHARE_CLASS_NAME:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 327
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/high16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 328
    .local v3, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    if-eqz v23, :cond_9

    .line 329
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 331
    :cond_9
    const-string v23, "[Util]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "no activity found to match the intent:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v3           #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #shareIntent:Landroid/content/Intent;
    :pswitch_8
    if-eqz p3, :cond_0

    .line 338
    const-string v23, "related_weibo"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 339
    .local v21, str:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mfsinaweibo://weibosquare/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 340
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 341
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 342
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    if-eqz v23, :cond_0

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 349
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v21           #str:Ljava/lang/String;
    :pswitch_9
    if-nez p2, :cond_a

    .line 350
    const-string v23, "[Util]"

    const-string v24, "[requestSinaAction:REQ_GET_SONG_DETAIL] handler cannot be null!"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_a
    if-nez p3, :cond_b

    .line 354
    const-string v23, "[Util]"

    const-string v24, "[requestSinaAction:REQ_GET_SONG_DETAIL] bundle cannot be null!"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_b
    const-string v23, "song_detail"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 358
    .local v17, songId:I
    const/16 v16, 0x0

    .line 360
    .local v16, songDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    :try_start_5
    move/from16 v0, v17

    invoke-interface {v6, v0}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getSongDetail(I)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    :try_end_5
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v16

    .line 366
    const/16 v23, 0x6a

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 361
    :catch_3
    move-exception v5

    .line 362
    .restart local v5       #e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 363
    const/16 v23, 0x69

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 369
    .end local v5           #e:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v16           #songDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .end local v17           #songId:I
    :pswitch_a
    invoke-interface {v6}, Lcom/htc/music/online/sinamusic/ISinaEngine;->requestLogout()V

    .line 370
    invoke-interface {v6}, Lcom/htc/music/online/sinamusic/ISinaEngine;->requestLogin()V

    goto/16 :goto_0

    .line 375
    :pswitch_b
    if-eqz p2, :cond_0

    .line 378
    const/4 v10, 0x0

    .line 379
    .local v10, mySonglist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    const/16 v23, 0x1

    sput v23, Lcom/htc/music/online/Util;->currentCollectionPage:I

    .line 381
    :try_start_6
    sget v23, Lcom/htc/music/online/Util;->currentCollectionPage:I

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v6, v0, v1}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getSelfSonglist(II)Ljava/util/ArrayList;

    move-result-object v10

    .line 382
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_6 .. :try_end_6} :catch_4

    .line 388
    const/16 v23, 0x66

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 383
    :catch_4
    move-exception v5

    .line 384
    .restart local v5       #e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 385
    const/16 v23, 0x69

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 392
    .end local v5           #e:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v10           #mySonglist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :pswitch_c
    if-eqz p2, :cond_0

    .line 395
    const/4 v9, 0x0

    .line 396
    .local v9, myNextSonglist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    sget v23, Lcom/htc/music/online/Util;->currentCollectionPage:I

    add-int/lit8 v11, v23, 0x1

    .line 398
    .local v11, myTempPage:I
    :try_start_7
    const-string v23, "[Util]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "get next collection list, list page = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/16 v23, 0xf

    move/from16 v0, v23

    invoke-interface {v6, v11, v0}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getSelfSonglist(II)Ljava/util/ArrayList;

    move-result-object v9

    .line 400
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_7
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_7 .. :try_end_7} :catch_5

    .line 406
    const/16 v23, 0x68

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v23

    if-eqz v23, :cond_0

    .line 410
    sput v11, Lcom/htc/music/online/Util;->currentCollectionPage:I

    goto/16 :goto_0

    .line 401
    :catch_5
    move-exception v5

    .line 402
    .restart local v5       #e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/SnsException;->printStackTrace()V

    .line 403
    const/16 v23, 0x69

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 233
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static serviceInOnlineMode()Z
    .locals 5

    .prologue
    .line 1115
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 1116
    .local v2, mService:Lcom/htc/music/IMediaPlaybackService;
    const/4 v1, 0x0

    .line 1118
    .local v1, isOnline:Z
    if-nez v2, :cond_0

    .line 1119
    :try_start_0
    const-string v3, "[Util]"

    const-string v4, "showAlbumOptions, mService = null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const/4 v3, 0x0

    .line 1126
    :goto_0
    return v3

    .line 1122
    :cond_0
    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v3, v1

    .line 1126
    goto :goto_0

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "[Util]"

    const-string v4, "Cannot get recent album ID from service."

    invoke-static {v3, v4, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static serviceInOnlineMode(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 4
    .parameter "mService"

    .prologue
    .line 1130
    const/4 v1, 0x0

    .line 1132
    .local v1, isOnline:Z
    if-nez p0, :cond_0

    .line 1133
    :try_start_0
    const-string v2, "[Util]"

    const-string v3, "showAlbumOptions, mService = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/4 v2, 0x0

    .line 1140
    :goto_0
    return v2

    .line 1136
    :cond_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 1140
    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "[Util]"

    const-string v3, "Cannot get recent album ID from service."

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setAppState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "pkgName"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 1093
    if-nez p0, :cond_0

    .line 1094
    const-string v1, "[Util]"

    const-string v2, "[enableApp] context cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :goto_0
    return-void

    .line 1097
    :cond_0
    if-nez p1, :cond_1

    .line 1098
    const-string v1, "[Util]"

    const-string v2, "[enableApp] pkgName cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1102
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-nez v0, :cond_2

    .line 1103
    const-string v1, "[Util]"

    const-string v2, "[enableApp] pm cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_2
    if-eqz p2, :cond_3

    .line 1108
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0

    .line 1110
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static setPauseButtonStatus(Lcom/htc/widget/HtcRimImageButton;Lcom/htc/music/IMediaPlaybackService;)V
    .locals 2
    .parameter "pauseBtn"
    .parameter "service"

    .prologue
    .line 1198
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    invoke-interface {p1}, Lcom/htc/music/IMediaPlaybackService;->isAsyncComplete()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static shareMusicInfo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;)V
    .locals 5
    .parameter "activity"
    .parameter "song"

    .prologue
    .line 698
    if-nez p0, :cond_0

    .line 699
    const-string v3, "[Util]"

    const-string v4, "[shareMusicInfo] activity is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :goto_0
    return-void

    .line 702
    :cond_0
    if-nez p1, :cond_1

    .line 703
    const-string v3, "[Util]"

    const-string v4, "[shareMusicInfo] song is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_1
    invoke-static {p1, p0}, Lcom/htc/music/online/Util;->getBundleFromSong(Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 709
    .local v1, shareMusicBundle:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/htc/music/online/Util;->findRootParent(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 710
    .local v0, rootActivity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 711
    invoke-static {v0, v1}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    .line 712
    .local v2, textDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 714
    .end local v2           #textDialog:Landroid/app/Dialog;
    :cond_2
    const-string v3, "[Util]"

    const-string v4, "[shareMusicInfo] rootActivity is null!!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shareMusicInfo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;Z)V
    .locals 5
    .parameter "activity"
    .parameter "song"
    .parameter "needAsyncLoading"

    .prologue
    .line 719
    if-nez p0, :cond_0

    .line 720
    const-string v3, "[Util]"

    const-string v4, "[shareMusicInfo] activity is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_0
    return-void

    .line 723
    :cond_0
    if-nez p1, :cond_1

    .line 724
    const-string v3, "[Util]"

    const-string v4, "[shareMusicInfo] song is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 728
    :cond_1
    invoke-static {p1, p0}, Lcom/htc/music/online/Util;->getBundleFromSong(Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 729
    .local v1, shareMusicBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 730
    const-string v3, "need_async_loading"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    const-string v3, "use_common_text"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 734
    :cond_2
    invoke-static {p0}, Lcom/htc/music/online/Util;->findRootParent(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 735
    .local v0, rootActivity:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 736
    invoke-static {v0, v1}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    .line 737
    .local v2, textDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 739
    .end local v2           #textDialog:Landroid/app/Dialog;
    :cond_3
    const-string v3, "[Util]"

    const-string v4, "[shareMusicInfo] rootActivity is null!!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shareMusicInfoToSinaWeibo(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 9
    .parameter "activity"
    .parameter "intent"
    .parameter "bundle"

    .prologue
    const v8, 0x204026b

    .line 459
    if-nez p2, :cond_0

    .line 460
    const-string v6, "[Util]"

    const-string v7, "[shareMusicInfoToSinaWeibo] bundler is null!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 463
    :cond_0
    if-nez p0, :cond_1

    .line 464
    const-string v6, "[Util]"

    const-string v7, "[shareMusicInfoToSinaWeibo] activity is null!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_1
    const-string v6, "use_common_text"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 470
    .local v3, isLocalMusic:Z
    if-eqz v3, :cond_3

    .line 473
    const-string v6, "music.intent.extra.track"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, songName:Ljava/lang/String;
    const-string v6, "music.intent.extra.artist"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, singerName:Ljava/lang/String;
    const-string v6, "music.intent.extra.album"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, albumName:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 479
    const-string v6, "TAG"

    const-string v7, "start query song !!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v2, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    invoke-direct {v2, p0, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 481
    .local v2, asyncQuerySong:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v6

    sput-object v6, Lcom/htc/music/online/Util;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 482
    sget-object v6, Lcom/htc/music/online/Util;->querylOnlineListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    invoke-virtual {v2, v5, v4, v6}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->startQuerySong(Ljava/lang/String;Ljava/lang/String;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V

    goto :goto_0

    .line 486
    .end local v2           #asyncQuerySong:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
    :cond_2
    const-string v6, "TAG"

    const-string v7, "start query album !!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v1, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    invoke-direct {v1, p0, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 488
    .local v1, asyncQueryAlbum:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v6

    sput-object v6, Lcom/htc/music/online/Util;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 489
    sget-object v6, Lcom/htc/music/online/Util;->querylOnlineListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    invoke-virtual {v1, v0, v4, v6}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->startQueryAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V

    goto :goto_0

    .line 495
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #asyncQueryAlbum:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
    .end local v4           #singerName:Ljava/lang/String;
    .end local v5           #songName:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p2}, Lcom/htc/music/online/Util;->gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static showSongDetail(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 3
    .parameter "context"
    .parameter "detail"

    .prologue
    .line 1256
    if-eqz p1, :cond_0

    .line 1258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1259
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/online/OnlinePropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1260
    const-string v1, "Song Name"

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    const-string v1, "Singer Name"

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSingerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    const-string v1, "Play Time"

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongPlayTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/online/Util;->getConvertedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    const-string v1, "Style"

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    const-string v1, "Album Name"

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string v1, "Location"

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongDetailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1269
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static wapNetworkAction(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1244
    const/16 v1, 0xd

    invoke-static {p0, v1}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1245
    .local v0, WapAlertDialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v0, :cond_2

    .line 1246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    :cond_0
    const v1, 0x7f0701e8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    .line 1250
    :cond_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1252
    :cond_2
    return-void
.end method
