.class public Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;
.super Ljava/lang/Object;
.source "EventLayoutHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "EventLayoutHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventPrototype:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSyncing:Z

.field private mLayoutHeightLand:I

.field private mLayoutHeightPort:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCountLand:I

.field private mRowCountPort:I

.field private mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    return-void
.end method

.method private isPrepared()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v0

    goto :goto_0
.end method

.method private setupEventLandLayout(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v4, 0x4

    const-string v7, "EventLayoutHandler"

    const-string v8, "[HTCAlbum][EventLayoutHandler][setupEventLandLayout]: begin..."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-le v1, v3, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getIdentifier()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getRowQuota()I

    move-result v5

    const/4 v7, -0x1

    if-eq v7, v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v2, v3

    iget v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRowFirstItemIndex4Land(I)V

    sub-int/2addr v4, v5

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/4 v2, -0x1

    const/4 v4, 0x4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    goto :goto_1

    :cond_5
    const-string v7, "EventLayoutHandler"

    const-string v8, "[HTCAlbum][EventLayoutHandler][setupEventLandLayout]: end..."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupEventPortLayout(Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/htc/opensense2/album/util/DateTimeManager;->resetEventDateFormater()V

    invoke-static {}, Lcom/htc/opensense2/album/util/DateTimeManager;->resetEventMonthFormater()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    :try_start_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-object v10, v0

    invoke-virtual {v10, v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setIndex(I)V

    if-eqz v11, :cond_0

    invoke-direct {p0, v11, v10}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v13}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->setIndex(I)V

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->setRange(JJDD)V

    invoke-virtual {v1, v13}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->setRowFirstItemIndex4Port(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v10, v1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    iget v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-object v11, v10

    goto :goto_0

    :cond_1
    invoke-static {v11, v10}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isSameDay(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v14, 0x1

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setPrototypeIdentifier(I)V

    invoke-virtual {v10, v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRowFirstItemIndex4Port(I)V

    iget v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    iget v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v14, v14, 0x1

    rem-int/lit8 v2, v14, 0x2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setPrototypeIdentifier(I)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setPrototypeIdentifier(I)V

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getIndex()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRowFirstItemIndex4Port(I)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setPrototypeIdentifier(I)V

    invoke-virtual {v10, v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRowFirstItemIndex4Port(I)V

    iget v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    iget v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public findColumnCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findLargestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public findLeastItemQuota()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public findMaxItemQuota()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public findMaxRowQuota(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public findRowCount(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    goto :goto_0
.end method

.method public findRowFirstItemIndex(II)I
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    if-ne v4, v5, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-nez v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getRowFirstItemIndex(I)I

    move-result v2

    move v3, v2

    goto :goto_0
.end method

.method public findSmallestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getFactorySize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getLayoutHeight(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    goto :goto_0
.end method

.method public getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 4

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "EventLayoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][EventLayoutHandler][getPrototype]: unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSmall;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemEventSmall;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 6

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_0

    if-le v1, p1, :cond_0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getIdentifier()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic getPrototypeByIndex(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getSeparableIndicator(I)J
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ltz p1, :cond_0

    if-le v6, p1, :cond_0

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    if-ne v7, v8, :cond_1

    :cond_0
    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_1
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v2

    :cond_2
    move-wide v4, v2

    goto :goto_0
.end method

.method public isSeparable(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ltz p1, :cond_0

    if-le v3, p1, :cond_0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    if-ne v4, v5, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public onRelayout(Ljava/util/ArrayList;)V
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

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->setupEventPortLayout(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->setupEventLandLayout(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSynclist(Ljava/util/ArrayList;)V
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

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "EventLayoutHandler"

    const-string v1, "[HTCAlbum][EventLayoutHandler][onSynclist]: begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    const-string v0, "EventLayoutHandler"

    const-string v1, "[HTCAlbum][EventLayoutHandler][onSynclist]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    return-void
.end method
