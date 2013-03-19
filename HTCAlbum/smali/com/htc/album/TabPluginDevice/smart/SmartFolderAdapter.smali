.class public Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
.source "SmartFolderAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$1;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$EventObserver;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;
    }
.end annotation


# static fields
.field public static final FLAG_REQUEST_LOAD_EVENTS:I = 0x4

.field public static final LOG_TAG:Ljava/lang/String; = "SmartFolderAdapter"

.field public static final STATE_LOAD_FOLDERS:I = 0x2


# instance fields
.field private mAdapterReleased:Z

.field private mCountToUpdate:I

.field protected mFSIndexCollections:[I

.field private mFSSeparatorlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;",
            ">;"
        }
    .end annotation
.end field

.field protected mFSTimeSections:[Ljava/lang/String;

.field private mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

.field private mIsEnableUpdateCache:Z

.field private mIsNeedUpdateGeocode:Z

.field private mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

.field protected mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mListHidden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mListNoSeparator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedForceWriteFileCache:Z

.field protected mNeedUpdateFSArrays:Z

.field protected mNewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mNewListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mNewListNoSeparator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldListNoSeparator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mShowSeperator:Z

.field private mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

.field private mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

.field private mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    iput v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mCountToUpdate:I

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsEnableUpdateCache:Z

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mAdapterReleased:Z

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mShowSeperator:Z

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->setContext(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    const-string v0, "key_show_event_seperator"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mShowSeperator:Z

    return-void
.end method

.method private doMergeEventsWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 35
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
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    const/16 v22, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-gtz v31, :cond_3

    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v31, "SmartFolderAdapter"

    const-string v32, "[HTCAlbum][SmartFolderAdapter][doMergeEventsWithFileCache]: no cahce..."

    invoke-static/range {v31 .. v32}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-gtz v31, :cond_6

    :cond_2
    const-string v31, "SmartFolderAdapter"

    const-string v32, "[HTCAlbum][SmartFolderAdapter][doMergeEventsWithFileCache]: no event..."

    invoke-static/range {v31 .. v32}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v22

    :cond_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getFolderType()Ljava/lang/String;

    move-result-object v28

    const-string v31, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLongitude()D

    move-result-wide v15

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLocation()Ljava/lang/String;

    move-result-object v27

    const/16 v31, 0x1

    invoke-static/range {v13 .. v16}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    if-eqz v27, :cond_4

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_4

    invoke-static/range {v13 .. v16}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v26

    new-instance v30, Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-direct/range {v30 .. v31}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v19

    const/16 v29, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLatitude()D

    move-result-wide v7

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLongitude()D

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v11

    invoke-static {v7, v8, v9, v10}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v31

    if-eqz v31, :cond_7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v20

    if-lez v19, :cond_8

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLocation()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLanguage()Ljava/lang/String;

    move-result-object v24

    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_9

    const/4 v3, 0x1

    :goto_4
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_a

    const/16 v31, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setLocation(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setLanguage(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_8
    :goto_5
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v0, v4, :cond_7

    new-instance v2, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-direct {v2}, Lcom/htc/AddressFinderService/interfaces/AddressData;-><init>()V

    invoke-virtual {v2, v7, v8}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLatitude(D)V

    invoke-virtual {v2, v9, v10}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLongitude(D)V

    invoke-virtual {v2, v11, v12}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setTime(J)V

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setLocation(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setLanguage(Ljava/lang/String;)V

    if-eqz v25, :cond_b

    const/16 v31, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    :cond_b
    const/4 v4, 0x1

    :goto_6
    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    goto :goto_6

    :cond_d
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v31, "SmartFolderAdapter"

    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string v34, "[HTCAlbum][SmartFolderAdapter][doMergeEventsWithFileCache]: Current lanuage: "

    aput-object v34, v32, v33

    const/16 v33, 0x1

    aput-object v26, v32, v33

    const/16 v33, 0x2

    const-string v34, ", need update size: "

    aput-object v34, v32, v33

    const/16 v33, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x4

    const-string v34, " with address: "

    aput-object v34, v32, v33

    const/16 v33, 0x5

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->size()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->setAddressDataMap(Ljava/util/HashMap;)Z

    goto/16 :goto_1
.end method

.method private doMergeSmartLocalWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
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
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    :cond_0
    move-object v0, p2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private isAdapterItemChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 12
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

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    const-string v8, "SmartFolderAdapter"

    const-string v9, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: initializing..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v4, v3, :cond_2

    const/4 v0, 0x1

    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: count changed: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ":"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    if-le v3, v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v8

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v9

    if-eq v8, v9, :cond_3

    const/4 v0, 0x1

    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " separable changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateName()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_4

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    if-eqz v6, :cond_f

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    :cond_5
    const/4 v0, 0x1

    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " date name changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    if-eqz v6, :cond_9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    const/4 v0, 0x1

    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " cover changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_a

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    if-eqz v6, :cond_c

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    const/4 v0, 0x1

    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " display name changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateName()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_d

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    if-eqz v6, :cond_f

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    :cond_e
    const/4 v0, 0x1

    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " date name changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method private isValidEventUpdateRequest(Z)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v4

    instance-of v5, v4, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v5, :cond_2

    move-object v0, v4

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->isFinderSearchInProgress()Z

    move-result v1

    :cond_0
    const-string v5, "SmartFolderAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SmartFolderAdapter][isValidEventUpdateRequest]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v8, v1, :cond_2

    if-ne v8, p1, :cond_1

    instance-of v5, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    const/16 v5, 0x13a5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    :cond_1
    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method private readEventFileCache()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v2, "local"

    const-string v3, "event"

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readEventCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private removeHiddenFoldersInBackground(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    :cond_2
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getBucketId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public enableCacheUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsEnableUpdateCache:Z

    return-void
.end method

.method public findColumnCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findColumnCount(I)I

    move-result v0

    return v0
.end method

.method public findLargestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findLargestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public findLeastItemQuota()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findLeastItemQuota()I

    move-result v0

    return v0
.end method

.method public findMaxItemQuota()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findMaxItemQuota()I

    move-result v0

    return v0
.end method

.method public findMaxRowQuota(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findMaxRowQuota(I)I

    move-result v0

    return v0
.end method

.method public findRowCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findRowCount(I)I

    move-result v0

    return v0
.end method

.method public findRowFirstItemIndex(II)I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findRowFirstItemIndex(II)I

    move-result v0

    return v0
.end method

.method public findSmallestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findSmallestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getFactorySize()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getFactorySize()I

    move-result v0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartFolderAdapter"

    return-object v0
.end method

.method public getIndexFromLatLong(Lcom/htc/AddressFinderService/interfaces/AddressData;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_2

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v8, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    cmpl-double v8, v8, v1

    if-nez v8, :cond_0

    iget-wide v8, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    cmpl-double v8, v8, v3

    if-nez v8, :cond_0

    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLanguage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    :cond_3
    return-object v5
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLayoutHeight(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getLayoutHeight(I)I

    move-result v0

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    aget v0, v1, p1

    :cond_0
    return v0
.end method

.method public getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrototypeByIndex(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    array-length v3, v4

    if-gtz p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-lt p1, v1, :cond_2

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    aget v4, v4, v0

    if-ge p1, v4, :cond_3

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 5

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    if-nez v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    new-array v3, v0, [I

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->getDateName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->getIndex()I

    move-result v4

    aput v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][getSections]: separator = null..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    check-cast v3, [Ljava/lang/Object;

    return-object v3
.end method

.method public getSeparableIndicator(I)J
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getSeparableIndicator(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSmartType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getSmartType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCacheExist()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v2, "local"

    const-string v3, "event"

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSeparable(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isSeparable(I)Z

    move-result v0

    return v0
.end method

.method public loadEvents()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->appendUpdateFlag(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->appendUpdateFlag(I)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onLoadData()V

    return-void
.end method

.method public onLoadData()V
    .locals 0

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onLoadData()V

    return-void
.end method

.method protected onLoadDataCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->stopLoadData()V

    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][onLoadDataCancelled] Stop loading"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "SmartFolderAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: Load state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mAdapterReleased:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mShowSeperator:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->onSynclist(Ljava/util/ArrayList;)V

    :cond_2
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isAdapterItemChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    :cond_4
    iget v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    :cond_6
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    :cond_8
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onLoadDataEnd(Ljava/lang/Integer;)V

    iget v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    if-ne v4, v7, :cond_d

    const-string v4, "SmartFolderAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: updateMultiAddresses: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    if-ne v7, v4, :cond_a

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getAutoRetrievePref(Landroid/content/Context;)Z

    move-result v4

    if-ne v7, v4, :cond_9

    const/4 v2, 0x1

    :cond_9
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateAddressInfo(Z)V

    :cond_a
    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventCache(I)V

    :cond_b
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_c
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v4, "SmartFolderAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->loadEvents()V

    goto :goto_2
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 24

    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] +"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v19

    if-nez v19, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    const-string v20, "SmartFolderAdapter"

    const-string v21, "[SmartFolderAdapter][onLoadDataInBackground] Storage not ready, skip background load DB!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x4e46

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onRemoveMessage(I)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const/16 v17, 0x1

    :goto_1
    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    and-int/lit8 v21, v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    const/16 v16, 0x1

    :goto_2
    const/16 v20, 0x4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    and-int/lit8 v21, v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "MimeTypeFilter"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    const-string v20, "SmartFolderAdapter"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Request flag to Load cache = "

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, " , Load folders = "

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-string v23, " , Load events = "

    aput-object v23, v21, v22

    const/16 v22, 0x5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v17, :cond_6

    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Load Caches!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isCacheExist()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->readEventFileCache()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_17

    const/16 v17, 0x1

    :goto_5
    if-eqz v17, :cond_19

    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getContainedMediaTypes()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-nez v20, :cond_2

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v5

    const-string v20, "SmartFolderAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_7
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isHiddenCacheExist()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getHiddenCacheList()Ljava/util/List;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->removeHiddenFoldersInBackground(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_1a

    :cond_5
    const/16 v16, 0x1

    :goto_9
    const-string v20, "SmartFolderAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Cache count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    :cond_6
    const/4 v12, 0x0

    if-eqz v16, :cond_a

    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Load Folders!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v20, "key_load_events"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7, v10}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->removeHiddenFoldersInBackground(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->setPhysicalFolderCount(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_1b

    :cond_7
    const/4 v12, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->doMergeSmartLocalWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_1c

    :cond_8
    const/4 v15, 0x1

    :goto_b
    if-eqz v15, :cond_9

    const/4 v12, 0x0

    :cond_9
    const-string v20, "SmartFolderAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Normal folder count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    :cond_a
    if-nez v12, :cond_b

    if-eqz v15, :cond_e

    :cond_b
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Load Events!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v20, "key_load_events_only"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v12, :cond_c

    const-string v20, "key_event_limits"

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7, v10}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->doMergeEventsWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    :goto_c
    const-string v20, "key_query_completed"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    :cond_d
    const-string v20, "SmartFolderAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Event count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mShowSeperator:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->onRelayout(Ljava/util/ArrayList;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    :cond_11
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    check-cast v18, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_18
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :cond_19
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x4e46

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onPostMessage(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_9

    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_a

    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->doMergeEventsWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_c

    :cond_1e
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground]: remove loading"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x4e46

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onRemoveMessage(I)V

    :cond_20
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] -"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onUnloadData()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onUnloadData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mAdapterReleased:Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventCache(I)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->postQuit()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->postQuit()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][onUnloadData] Release adapter now!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestUpdateAddressInfo(Z)V
    .locals 4

    const-string v1, "SmartFolderAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SmartFolderAdapter][requestUpdateAddressInfo]: update by network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->addressLookup(Z)V

    :cond_0
    return-void
.end method

.method public requestUpdateEventAddress(Z)V
    .locals 3

    const-string v0, "SmartFolderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventAddress]: force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isValidEventUpdateRequest(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventAddress]: skip 1... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventAddress]: skip 2... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;-><init>(Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->start()V

    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->postTask(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->RUNNING:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->getStatus()Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventAddress]: skip 3... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestUpdateEventCache(I)V
    .locals 6

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsEnableUpdateCache:Z

    if-nez v3, :cond_0

    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: skip 1 "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: skip 2 "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "SmartFolderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const-string v3, "SmartFolderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: need udpate location to file cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    if-nez v3, :cond_2

    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: No adapter Item Changed..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    if-nez v3, :cond_3

    new-instance v3, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->start()V

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "updateFlag"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v3, "listA"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "listB"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->postTask(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setAddressDataMap(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isValidEventUpdateRequest(Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][setAddressDataMap]: skip... "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mCountToUpdate:I

    invoke-interface {v0, p1, v3}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setAddressLookUpSource(Ljava/util/HashMap;I)V

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public setIntermediateDataBundle(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->appendUpdateFlag(I)V

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][setIntermediateDataBundle]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSmartType(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->setSmartType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x138f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onPostMessage(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method
