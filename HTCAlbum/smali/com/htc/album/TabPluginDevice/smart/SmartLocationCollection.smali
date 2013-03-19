.class public Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
.super Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
.source "SmartLocationCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final E6:D = 1000000.0

.field public static final FACTOR_LATITUDE:D = 0.09

.field public static final FACTOR_LONGITUDE:D = 0.09

.field public static final FACTOR_TIME:J = 0x36ee80L

.field public static final FACTOR_TIME_2_HOURS:J = 0x6ddd00L

.field public static final FACTOR_TIME_8_HOURS:J = 0x1b77400L

.field public static final FACTOR_TIME_HALF:J = 0x1b7740L

.field public static final KEY_MAX_LATITUDE:Ljava/lang/String; = "location_max_latitude"

.field public static final KEY_MAX_LONGITUDE:Ljava/lang/String; = "location_max_longitude"

.field public static final KEY_MIN_LATITUDE:Ljava/lang/String; = "location_min_latitude"

.field public static final KEY_MIN_LONGITUDE:Ljava/lang/String; = "location_min_location"

.field private static final LOG_TAG:Ljava/lang/String; = "SmartLocationCollection"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mLatitudeMax:D

.field private mLatitudeMin:D

.field private mLongitudeMax:D

.field private mLongitudeMin:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide v2, 0x406fe00000000000L

    const-wide v0, -0x3f90200000000000L

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    const-string v1, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    const-string v2, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide v2, 0x406fe00000000000L

    const-wide v0, -0x3f90200000000000L

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-wide v2, 0x406fe00000000000L

    const-wide v0, -0x3f90200000000000L

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method protected adjustRange(JDD)V
    .locals 4

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    const-wide/32 v2, 0x6ddd00

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    invoke-static {p3, p4, p5, p6}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    iput-wide p5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    :cond_1
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    goto :goto_0
.end method

.method public clone(Lcom/htc/album/modules/collection/Collection;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    instance-of v1, p1, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    :cond_0
    return-void
.end method

.method public deserializeEventParams(Ljava/lang/String;)Z
    .locals 27

    const/16 v23, 0x0

    new-instance v24, Ljava/util/StringTokenizer;

    const-string v5, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v5, v0, :cond_0

    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const/16 v23, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setRange(JJDD)V

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setMaxLocation(DD)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setMinLocation(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v23

    :catch_0
    move-exception v14

    const-string v5, "SmartLocationCollection"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception bucketId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v5, "SmartLocationCollection"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bucketId missing. bucketId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->serializeEventParams()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getIdentifier()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getFolderRecoveryParam()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->serializeEventParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryWhere(IZ)Ljava/lang/String;
    .locals 7

    const-wide/16 v5, 0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ( ( datetaken > 0 AND datetaken <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND datetaken >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) OR ( datetaken <= 0 AND date_modified  <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND date_modified >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) ) AND ( ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) OR ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) OR (("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-static {v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMaxLatitude(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-static {v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMinLatitude(D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iget-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-static {v3, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMaxLongitude(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iget-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-static {v3, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMinLongitude(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )) )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public inRange(JDD)Z
    .locals 5

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p3, p4, p5, p6}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p6}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->adjustRange(JDD)V

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMaxLatitude(D)D

    move-result-wide v1

    cmpl-double v1, v1, p3

    if-lez v1, :cond_5

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMinLatitude(D)D

    move-result-wide v1

    cmpl-double v1, p3, v1

    if-ltz v1, :cond_5

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMaxLongitude(DD)D

    move-result-wide v1

    cmpl-double v1, v1, p5

    if-lez v1, :cond_5

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMinLongitude(DD)D

    move-result-wide v1

    cmpl-double v1, p5, v1

    if-gez v1, :cond_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 10

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget v5, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getQueryWhere(IZ)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadFromPreference(Landroid/content/SharedPreferences;)V
    .locals 3

    const/high16 v2, 0x437f

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->onLoadFromPreference(Landroid/content/SharedPreferences;)V

    const-string v0, "location_max_latitude"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    const-string v0, "location_max_longitude"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    const-string v0, "location_min_latitude"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    const-string v0, "location_min_location"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    return-void
.end method

.method protected onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V

    const-string v0, "location_max_latitude"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "location_max_longitude"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "location_min_latitude"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "location_min_location"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->readFrom(ZIILjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    move v1, v2

    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    return-void
.end method

.method public serializeEventParams()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public setMaxLocation(DD)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    return-void
.end method

.method public setMinLocation(DD)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    return-void
.end method

.method public setRange(JJDD)V
    .locals 7

    invoke-super/range {p0 .. p8}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJDD)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p5

    move-wide v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->adjustRange(JDD)V

    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->toFormatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
