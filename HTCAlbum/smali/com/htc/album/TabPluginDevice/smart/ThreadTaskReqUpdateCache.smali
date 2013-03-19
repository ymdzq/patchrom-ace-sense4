.class public final Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "ThreadTaskReqUpdateCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThreadTaskReqUpdateCache"

.field public static final REQUEST_UPDATE_CACHE:I = 0x1

.field public static final REQUEST_UPDATE_CACHE_BY_LOCATION:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mIsCancelled:Z

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: list is null"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    return v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v8, :cond_2

    if-nez v9, :cond_3

    :cond_2
    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: list is empty"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_3
    if-eq v8, v9, :cond_4

    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: size differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-nez v5, :cond_7

    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: collection item differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_7
    iget-wide v13, v12, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    iget-wide v15, v5, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    cmpl-double v13, v13, v15

    if-nez v13, :cond_8

    iget-wide v13, v12, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    iget-wide v15, v5, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_9

    :cond_8
    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: location differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getPhotoCount()I

    move-result v13

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getPhotoCount()I

    move-result v14

    if-eq v13, v14, :cond_a

    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: count differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getSupportedMediaTypes()I

    move-result v13

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getSupportedMediaTypes()I

    move-result v14

    if-eq v13, v14, :cond_b

    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: Media Type changed!!"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v11

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v4

    if-eqz v11, :cond_d

    if-eqz v4, :cond_d

    iget-wide v13, v11, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v15, v4, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v13, v13, v15

    if-eqz v13, :cond_c

    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: item time differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    :cond_c
    iget v13, v11, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iget v14, v4, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    if-eq v13, v14, :cond_10

    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: item degree of rotation differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    :cond_d
    if-nez v11, :cond_e

    if-nez v4, :cond_f

    :cond_e
    if-eqz v11, :cond_10

    if-nez v4, :cond_10

    :cond_f
    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: cover image differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_11

    const-string v13, ""

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged] 1: name differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    :cond_11
    if-eqz v3, :cond_6

    const-string v13, ""

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "ThreadTaskReqUpdateCache"

    const-string v14, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged] 2: name differs"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected doInBackground(Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 9

    const/4 v5, 0x1

    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ThreadTaskReqUpdateCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "updateFlag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "listA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v0, "listB"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v6, 0x0

    packed-switch v8, :pswitch_data_0

    const-string v0, "ThreadTaskReqUpdateCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "ThreadTaskReqUpdateCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: need update to cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mIsCancelled:Z

    if-nez v0, :cond_0

    if-ne v5, v6, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "event"

    const/4 v4, 0x4

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_0
    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-direct {p0, v7, v3}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v6

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->doInBackground(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mIsCancelled:Z

    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][onCancelled]: update cancelled..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_1

    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][onPostExecute]: result is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][onPostExecute]: no update requested..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][onPostExecute]: update done..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->onPreExecute(Landroid/os/Bundle;)V

    return-void
.end method
