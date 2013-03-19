.class public Lcom/htc/album/TabPluginDevice/smart/EventHelper;
.super Ljava/lang/Object;
.source "EventHelper.java"


# static fields
.field public static final E6:D = 1000000.0

.field public static EVENT_COLLECTIONS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static EVENT_IDS:[Ljava/lang/String; = null

.field public static final FACTOR_LATITUDE:D = 0.09

.field public static final FACTOR_LONGITUDE:D = 0.09

.field public static final FACTOR_LONGITUDES:[D = null

.field public static final FACTOR_TIME:J = 0x36ee80L

.field public static final FACTOR_TIME_2_HOURS:J = 0x6ddd00L

.field public static final FACTOR_TIME_8_HOURS:J = 0x1b77400L

.field public static final FACTOR_TIME_HALF:J = 0x1b7740L

.field public static final LOG_TAG:Ljava/lang/String; = "EventHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->FACTOR_LONGITUDES:[D

    sput-object v1, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x8
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0xat 0xb7t 0x3ft
        0xb2t 0x9dt 0xeft 0xa7t 0xc6t 0x4bt 0xb7t 0x3ft
        0xfat 0x7et 0x6at 0xbct 0x74t 0x93t 0xb8t 0x3ft
        0x39t 0xb4t 0xc8t 0x76t 0xbet 0x9ft 0xbat 0x3ft
        0xc1t 0xcat 0xa1t 0x45t 0xb6t 0xf3t 0xbdt 0x3ft
        0xect 0x51t 0xb8t 0x1et 0x85t 0xebt 0xc1t 0x3ft
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0xat 0xc7t 0x3ft
        0xa2t 0x45t 0xb6t 0xf3t 0xfdt 0xd4t 0xd0t 0x3ft
        0xfat 0x7et 0x6at 0xbct 0x74t 0x93t 0xe0t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri(I)Landroid/net/Uri;
    .locals 2

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getEventCoverPath(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getEventDayOfYear(ILjava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDayOfYear()I

    move-result v1

    goto :goto_0
.end method

.method public static final getEventFileSize(ILjava/lang/String;)J
    .locals 4

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-wide v1

    :cond_1
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getSize()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static final getEventLastModifyTime(ILjava/lang/String;)J
    .locals 4

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-wide v1

    :cond_1
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateModified()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static final getEventList(ILandroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 9

    new-instance v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-direct {v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v7, "key_no_res_displayname"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "MimeTypeFilter"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x11

    invoke-virtual {v3, p1, v7, v2, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [Ljava/lang/String;

    sput-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    sget-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getBucketId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    sget-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getBucketId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object v0, p2

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    return-object v7
.end method

.method public static final getEventList(ILandroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MimeTypeFilter"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getEventList(ILandroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getEventMimeType(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getEventMonth(ILjava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v1

    goto :goto_0
.end method

.method public static final getEventRotate(ILjava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDegreesRotated()I

    move-result v1

    goto :goto_0
.end method

.method public static final getEventThumbnailSize(I[I)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    :cond_0
    const-string v4, "EventHelper"

    const-string v5, "[HTCAlbum][EventHelper][getEventThumbnailSize]: skip 1..."

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x3

    array-length v5, p1

    sub-int v1, v5, v0

    rem-int v5, v1, v0

    if-eqz v5, :cond_2

    const-string v4, "EventHelper"

    const-string v5, "[HTCAlbum][EventHelper][getEventThumbnailSize]: skip 2..."

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-lt v1, v2, :cond_5

    aget v3, p1, v2

    if-ne v4, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    aput v5, p1, v3

    add-int/lit8 v3, v2, 0x2

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    aput v5, p1, v3

    :cond_3
    :goto_2
    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    aget v5, p1, v2

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, 0x1

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_W:I

    aput v5, p1, v3

    add-int/lit8 v3, v2, 0x2

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_H:I

    aput v5, p1, v3

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method public static final getEventThumbnailType(I[I)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    :cond_0
    const-string v9, "EventHelper"

    const-string v10, "[HTCAlbum][EventHelper][getEventThumbnailType]: skip 1..."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v8

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x3

    array-length v10, p1

    sub-int v4, v10, v0

    rem-int v10, v4, v0

    if-eqz v10, :cond_2

    const-string v9, "EventHelper"

    const-string v10, "[HTCAlbum][EventHelper][getEventThumbnailType]: skip 2..."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-lt v4, v5, :cond_6

    new-instance v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    aget v8, p1, v5

    iput v8, v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    add-int/lit8 v8, v5, 0x1

    aget v8, p1, v8

    iput v8, v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    add-int/lit8 v8, v5, 0x2

    aget v8, p1, v8

    iput v8, v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    if-eqz v3, :cond_3

    invoke-static {v3, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isSameDay(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    const/4 v7, 0x1

    add-int v8, v5, v1

    aput v11, p1, v8

    :goto_2
    move v6, v5

    move-object v3, v2

    add-int/2addr v5, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_5

    add-int v8, v5, v1

    aput v9, p1, v8

    add-int v8, v6, v1

    aput v9, p1, v8

    goto :goto_2

    :cond_5
    add-int v8, v5, v1

    aput v11, p1, v8

    goto :goto_2

    :cond_6
    move v8, v9

    goto :goto_0
.end method

.method public static final getEventTypeById(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getEventYear(ILjava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v1

    goto :goto_0
.end method

.method public static getMaxLatitude(D)D
    .locals 2

    const-wide v0, 0x3fb70a3d70a3d70aL

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static getMaxLongitude(DD)D
    .locals 7

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    double-to-int v0, v3

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    const/16 v0, 0x8

    :cond_0
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->FACTOR_LONGITUDES:[D

    aget-wide v1, v3, v0

    add-double v3, p2, v1

    return-wide v3
.end method

.method public static getMinLatitude(D)D
    .locals 2

    const-wide v0, 0x3fb70a3d70a3d70aL

    sub-double v0, p0, v0

    return-wide v0
.end method

.method public static getMinLongitude(DD)D
    .locals 7

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    double-to-int v0, v3

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    const/16 v0, 0x8

    :cond_0
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->FACTOR_LONGITUDES:[D

    aget-wide v1, v3, v0

    sub-double v3, p2, v1

    return-wide v3
.end method

.method public static final getProjection(I)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static final getSingleEventWhereArgs(ILjava/lang/String;Z)[Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getQueryWhereParams(IZ)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getSingleEventWhereClause(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getQueryWhere(IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getSortOrder(I)Ljava/lang/String;
    .locals 1

    const-string v0, "datetaken DESC, date_modified DESC"

    return-object v0
.end method

.method public static final getTimeRange(ILjava/lang/String;)[J
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-nez v0, :cond_0

    :cond_0
    return-object v1
.end method

.method public static final getWhereArgs(I)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getWhereClause(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(( media_type = 1 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) OR ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final handleRetrievedAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Ljava/lang/String;)V
    .locals 13

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    instance-of v11, v1, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v11, :cond_0

    instance-of v11, v3, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v11, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v0, p2}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->getAddressResultMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_0

    move-object v10, v1

    check-cast v10, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLongitude()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/AddressFinderService/interfaces/AddressData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setLanguage(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public static isSameDay(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDayOfYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDayOfYear()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static isValidateLatLng(DD)Z
    .locals 5

    const-wide v3, 0x406fe00000000000L

    const-wide/16 v1, 0x0

    cmpl-double v0, p0, v3

    if-eqz v0, :cond_0

    cmpl-double v0, p2, v3

    if-eqz v0, :cond_0

    cmpl-double v0, p0, v1

    if-eqz v0, :cond_0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final resetEvents(I)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    sput-object v1, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    sput-object v1, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    return-void
.end method

.method public static final retrieveAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V
    .locals 16

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v14

    if-eqz v14, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v4

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    instance-of v14, v2, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v14, :cond_0

    instance-of v14, v4, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v14, :cond_0

    move-object v13, v2

    check-cast v13, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLongitude()D

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLocation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_0

    new-instance v3, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-direct {v3}, Lcom/htc/AddressFinderService/interfaces/AddressData;-><init>()V

    invoke-virtual {v3, v7, v8}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLatitude(D)V

    invoke-virtual {v3, v11, v12}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLongitude(D)V

    invoke-static {v7, v8, v11, v12}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setEnableNetworkAccessWarning(Z)V

    const/4 v14, 0x1

    invoke-interface {v1, v9, v14}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setAddressLookUpSource(Ljava/util/HashMap;I)V

    invoke-virtual {v4}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getAutoRetrievePref(Landroid/content/Context;)Z

    move-result v14

    invoke-interface {v1, v14}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->addressLookup(Z)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method
