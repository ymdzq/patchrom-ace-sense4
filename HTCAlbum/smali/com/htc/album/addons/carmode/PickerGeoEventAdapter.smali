.class public Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;
.super Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
.source "PickerGeoEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterSmartEvent"


# instance fields
.field private mDatabaseLoadFinish:Z

.field protected mFastScrollInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;",
            ">;"
        }
    .end annotation
.end field

.field mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;-><init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    iput-object v1, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mFastScrollInfoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mDatabaseLoadFinish:Z

    iput-object v1, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    return-void
.end method


# virtual methods
.method protected generateFastScrollInformation(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/htc/opensense2/album/util/DateTimeManager;->resetEventDateFormater()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    const-string v8, "AdapterSmartEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[generateFastScrollInformation] collectionList = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setIndex(I)V

    if-eqz v2, :cond_3

    invoke-static {v2, v1}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getStartTime()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/htc/opensense2/album/util/DateTimeManager;->getEventsMonthString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v8, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;

    invoke-direct {v8, p0, v3, v7}, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;-><init>(Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    move-object v2, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const-string v8, "AdapterSmartEvent"

    const-string v9, "dateString is null"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v8, "AdapterSmartEvent"

    const-string v9, "[generateFastScrollInformation] NG"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFactorySize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "AdapterSmartEvent"

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    return-object v0
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    return-object v0
.end method

.method public bridge synthetic getPrototypeByIndex(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mFastScrollInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    if-nez v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mFastScrollInfoList:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mFastScrollInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;

    if-nez v2, :cond_1

    const-string v3, "AdapterSmartEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FastScrollInfo null, index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->getDateName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    invoke-virtual {v2}, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->getIndex()I

    move-result v4

    aput v4, v3, v1

    goto :goto_1

    :cond_2
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    :goto_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    check-cast v3, [Ljava/lang/Object;

    return-object v3

    :cond_3
    const-string v3, "AdapterSmartEvent"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "mFastScrollInfoList = "

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mFastScrollInfoList:Ljava/util/ArrayList;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, ", mNeedUpdateFSArrays = "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, ", mFSTimeSections = "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, ", mFSIndexCollections = "

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public isCacheExist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    if-ne v0, v4, :cond_0

    iput-boolean v4, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mDatabaseLoadFinish:Z

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mDatabaseLoadFinish:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "AdapterSmartEvent"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mLoadState = "

    aput-object v3, v1, v2

    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, " skip notifyDataSetChanged. mDatabaseLoadFinish = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mDatabaseLoadFinish:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->generateFastScrollInformation(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mFastScrollInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    iput-object v1, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    goto :goto_0
.end method
