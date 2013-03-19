.class Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;
.super Ljava/lang/Thread;
.source "MfFragmentMainLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageThread"
.end annotation


# static fields
.field static final SOURCE_CAMERA_CONTINUOUS:I = 0x1002

.field static final SOURCE_CAMERA_PREVIEW:I = 0x1001

.field static final SOURCE_PREVIEW:I = 0x1003

.field private static final TAG:Ljava/lang/String; = "DecodeImageThread"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFilePath:Ljava/lang/String;

.field private mFileUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mOrientation:I

.field private mSourceType:I

.field private mType:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    const-string v0, "DecodeImageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mOrientation:I

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$000(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    return-void
.end method

.method private decode(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 24

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "JUMP_ID_FULLSCREENVIEW -> decode image uri="

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_2

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    const/4 v7, 0x1

    const-string v8, "content"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_4

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v12

    move-object v13, v12

    :goto_1
    :try_start_1
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput-boolean v7, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v7, 0x0

    invoke-static {v13, v7, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    if-eqz v20, :cond_6

    const/4 v7, 0x1

    const-string v8, "content"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_6

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v12

    :goto_2
    move/from16 v0, v22

    if-gt v5, v0, :cond_3

    move/from16 v0, v21

    if-le v6, v0, :cond_9

    :cond_3
    const/16 v19, 0x1

    move/from16 v16, v5

    move v15, v6

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    move/from16 v0, v21

    if-le v15, v0, :cond_8

    shl-int/lit8 v19, v19, 0x1

    shr-int/lit8 v16, v16, 0x1

    shr-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    if-eqz v20, :cond_5

    const/4 v7, 0x1

    :try_start_2
    const-string v8, "file"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v17

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :cond_6
    if-eqz v20, :cond_7

    const/4 v7, 0x1

    :try_start_3
    const-string v8, "file"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v17

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_2

    :cond_8
    :try_start_4
    move/from16 v0, v19

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_9
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_a

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[decode] downsample size = "

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v23, " original "

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v7, 0x0

    iput-boolean v7, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v7, 0x0

    invoke-static {v12, v7, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_b

    new-instance v2, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mOrientation:I

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    if-eqz v12, :cond_1

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x1

    :try_start_6
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v7, v8, :cond_c

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Can\'t decode bmp from "

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    :cond_c
    move-object v2, v9

    goto :goto_4

    :catch_1
    move-exception v11

    :goto_5
    :try_start_7
    const-string v7, "DecodeImageThread"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v12, :cond_d

    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_d
    move-object v2, v9

    goto/16 :goto_0

    :catch_2
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v9

    goto/16 :goto_0

    :catch_3
    move-exception v11

    :goto_6
    :try_start_9
    const-string v7, "DecodeImageThread"

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v4, 0x0

    :cond_e
    if-eqz v12, :cond_f

    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_f
    move-object v2, v9

    goto/16 :goto_0

    :catch_4
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v9

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v12, :cond_10

    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_10
    :goto_8
    throw v7

    :catch_5
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v7

    move-object v12, v13

    goto :goto_7

    :catch_6
    move-exception v11

    move-object v12, v13

    goto :goto_6

    :catch_7
    move-exception v11

    move-object v12, v13

    goto :goto_5
.end method

.method private decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v3, 0xc

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    iput v14, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iput v13, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    new-instance v17, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    const/16 v3, 0x22

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskSetup()V

    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskIterate()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskEnd()V

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->release()V

    new-instance v2, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    iget-object v4, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mOrientation:I

    move-object v3, v12

    move/from16 v5, v16

    move v6, v15

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;I)V

    return-object v2
.end method

.method private updateSourceType(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v5, 0x1001

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v5, 0x1003

    if-ne v4, v5, :cond_4

    :cond_0
    const-string v4, "camera_last_file_path"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "BURST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->isSameCollection(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->isBurstShotExpand(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getLatestGridPhotoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getRotationInformation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mOrientation:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mType:I

    const/16 v5, 0x1002

    if-ne v4, v5, :cond_5

    const-string v4, "camera_last_file_path"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getCoverImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v8, 0x0

    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->setPriority(I)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$100(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v7, "camera_last_file_mime"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image/jp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$200(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skip decode full screen preview photo, mimeType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->updateSourceType(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v1, 0x0

    iget v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$300(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find correct SourceType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mSourceType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1
    :try_start_2
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->decode(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :goto_1
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decode time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$400(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$500(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mContentView.setInitBackgroundDrawable() drawable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_2
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_2
    :try_start_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v4}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$600(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "DecodeImageThread"

    const-string v8, "Can\'t finish decode QuickView: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    throw v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
