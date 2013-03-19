.class public final Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "ThreadTaskReqUpdateAddress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ThreadTaskReqUpdateAddress"


# instance fields
.field private mListA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

.field private mUpdateList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mListA:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    return-void
.end method

.method private doUpdateUnavailableAddress(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    const-string v17, "ThreadTaskReqUpdateAddress"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateAddress][doUpdateUnavailableAddress]: ..."

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_1

    :cond_0
    const-string v17, "ThreadTaskReqUpdateAddress"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateAddress][doUpdateUnavailableAddress]: skip..."

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v8

    invoke-static {v4, v5, v6, v7}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v3, 0x1

    iget-object v0, v10, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v15, v10, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v16, :cond_3

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v3, 0x1

    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_2

    new-instance v2, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-direct {v2}, Lcom/htc/AddressFinderService/interfaces/AddressData;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLatitude(D)V

    invoke-virtual {v2, v6, v7}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLongitude(D)V

    invoke-virtual {v2, v8, v9}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setTime(J)V

    invoke-static {v4, v5, v6, v7}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const-string v17, "ThreadTaskReqUpdateAddress"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][ThreadTaskReqUpdateAddress][doUpdateUnavailableAddress]: need update count: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doInBackground(Ljava/util/ArrayList;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][doInBackground]: +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mListA:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->doUpdateUnavailableAddress(Ljava/util/ArrayList;)V

    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][doInBackground]: -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->doInBackground(Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][onCancelled]: ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;->setAddressDataMap(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][onPostExecute]: requestUpdateAddressInfo..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;->requestUpdateAddressInfo(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->onPreExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPreExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][onPreExecute]:... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mListA:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
