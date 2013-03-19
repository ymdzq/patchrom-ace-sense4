.class public Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "AdapterLocalPhoto4UploadEditor.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AdapterLocalPhoto4UploadEditor"

.field private static final UPLOAD_MAX_LIMIT:I = 0x270f


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mIsException:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

.field private mService:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/UploadEditor/ISceneSourcePlugin;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mService:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    iput-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    iput-object p2, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "AdapterLocalPhoto4UploadEditor"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    return-object v0
.end method

.method protected onLoadDataBegin()V
    .locals 2

    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataBegin()V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    const-string v1, "Launch_Service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mService:Ljava/lang/String;

    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "AdapterLocalPhoto4UploadEditor"

    const-string v1, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataEnd]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataEnd(Ljava/lang/Integer;)V

    return-void

    :cond_1
    const-string v0, "AdapterLocalPhoto4UploadEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataEnd]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 21

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: doInBackground +"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: Launch Service: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mService:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x270f

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: overloading..skip... "

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    :goto_0
    return-object p1

    :cond_0
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_6

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: Prepare launch from HtcMediaUpload."

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: Get mediaList Size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: exception on ! skip process !"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_1

    const-string v18, "com.htc.opensense.upload.URI"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: Can\'t get uri from bundle !"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    if-eqz v14, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.STREAM"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mService:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->getServicePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v15, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "SHARE_INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v13, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "SHARE_INFO"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.STREAM"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_7

    :cond_5
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: null list"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    goto/16 :goto_0

    :cond_6
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: init from Bundle NG !"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "singleShare"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_8
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: count: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    if-eqz v7, :cond_a

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v18

    if-nez v18, :cond_b

    :cond_a
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: null list"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_b
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-interface {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    if-eqz v6, :cond_9

    const/4 v12, 0x0

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v18

    if-eqz v18, :cond_c

    new-instance v12, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;

    invoke-static {}, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->instance()Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;-><init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V

    :goto_4
    invoke-virtual {v12, v6}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->init(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v18

    if-nez v18, :cond_d

    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: init norCursorItem - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Fail !!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    goto/16 :goto_3

    :cond_c
    new-instance v12, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;

    invoke-static {}, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->instance()Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;-><init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_e
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: end"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onUnloadData()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    return-void
.end method
