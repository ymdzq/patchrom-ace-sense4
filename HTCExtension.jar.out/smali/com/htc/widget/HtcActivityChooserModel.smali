.class public Lcom/htc/widget/HtcActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "HtcActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;,
        Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;,
        Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;,
        Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;,
        Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;,
        Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;,
        Lcom/htc/widget/HtcActivityChooserModel$OnChooseActivityListener;,
        Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;,
        Lcom/htc/widget/HtcActivityChooserModel$HtcActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/widget/HtcActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final MAX_DATA_SIZE:I

.field private final mActivites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Lcom/htc/widget/HtcActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;

.field private mAllows:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private mExcludes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDefaultOrder:Z

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mReadShareHistoryCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    new-instance v0, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/HtcActivityChooserModel$DataModelPackageMonitor;-><init>(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    new-instance v0, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/HtcActivityChooserModel$DefaultSorter;-><init>(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryMaxSize:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIsDefaultOrder:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->MAX_DATA_SIZE:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcActivityChooserModel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/widget/HtcActivityChooserModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcActivityChooserModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcActivityChooserModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->loadActivitiesLocked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcActivityChooserModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcActivityChooserModel;->addHisoricalRecord(Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcActivityChooserModel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcActivityChooserModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIsDefaultOrder:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/widget/HtcActivityChooserModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIsDefaultOrder:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcActivityChooserModel;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcActivityChooserModel;->setDefaultWeight(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcActivityChooserModel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcActivityChooserModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->sortActivities()V

    return-void
.end method

.method private addHisoricalRecord(Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->persistHistoricalData()V

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->sortActivities()V

    :cond_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/widget/HtcActivityChooserModel;
    .locals 3

    sget-object v2, Lcom/htc/widget/HtcActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActivityChooserModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcActivityChooserModel;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcActivityChooserModel;->setAllowedPackages(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcActivityChooserModel;->setExcludedPackages(Ljava/util/List;)V

    invoke-direct {v0}, Lcom/htc/widget/HtcActivityChooserModel;->readHistoricalData()V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Landroid/database/DataSetObserver;)Lcom/htc/widget/HtcActivityChooserModel;
    .locals 3

    sget-object v2, Lcom/htc/widget/HtcActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActivityChooserModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcActivityChooserModel;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcActivityChooserModel;->setAllowedPackages(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcActivityChooserModel;->setExcludedPackages(Ljava/util/List;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {v0}, Lcom/htc/widget/HtcActivityChooserModel;->readHistoricalData()V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v15

    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_2

    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Fail to get cursor"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cursor size is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "value"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v1, v0, :cond_6

    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No customized data is supported"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :try_start_0
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/widget/HtcActivityChooserModel;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v8

    const-string v1, "settings"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-nez v7, :cond_7

    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "bundle == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v11

    sget-object v1, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "CursorIndexOutOfBoundsException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_7
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15, v13}, Lcom/htc/widget/HtcActivityChooserModel;->putData(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadActivitiesLocked()V
    .locals 11

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_5

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_3
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    new-instance v10, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v10, p0, v6}, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;-><init>(Lcom/htc/widget/HtcActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->sortActivities()V

    :goto_2
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcActivityChooserModel;->notifyChanged()V

    goto :goto_2
.end method

.method private persistHistoricalData()V
    .locals 4

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/HtcActivityChooserModel$HistoryPersister;-><init>(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsLocked()V
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryMaxSize:I

    sub-int v2, v3, v4

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    iget-object v5, v0, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->sortActivities()V

    :cond_2
    return-void
.end method

.method private putData(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retreiving the customized data from key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readHistoricalData()V
    .locals 4

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/HtcActivityChooserModel$HistoryLoader;-><init>(Lcom/htc/widget/HtcActivityChooserModel;Lcom/htc/widget/HtcActivityChooserModel$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setDefaultWeight(ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v0, "content://customization_settings/SettingTable/framework_ShareVia"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/htc/widget/HtcActivityChooserModel;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Apply the default order list since no customized data is found."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x31

    if-ne v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xe1

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd9

    if-ne v2, v3, :cond_3

    :cond_0
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.mmsmediaproxy"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.htctwitter"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.dropbox.android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.cloudstorage.skydrive"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1, p2, p1}, Lcom/htc/widget/HtcActivityChooserModel;->setWeight(Ljava/util/HashMap;Ljava/util/List;I)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.htctwitter"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.dropbox.android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.cloudstorage.skydrive"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.notes"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setWeight(Ljava/util/HashMap;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ge v11, v12, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_0

    :cond_1
    const/16 v12, 0x9

    if-le v11, v12, :cond_2

    const/16 v11, 0x9

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_5

    move v8, v6

    :goto_2
    if-ge v8, v11, :cond_4

    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    new-instance v2, Landroid/content/ComponentName;

    const-string v12, "*"

    invoke-direct {v2, v10, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    int-to-long v14, v6

    add-long/2addr v14, v3

    const/high16 v12, 0x3f80

    invoke-direct {v5, v2, v14, v15, v12}, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcActivityChooserModel;->persistHistoricalData()V

    :cond_6
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcActivityChooserModel;->sortActivities()V

    return-void

    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12
.end method

.method private sortActivities()V
    .locals 5

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;

    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;->sort(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcActivityChooserModel;->notifyChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 7

    iget-object v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/widget/HtcActivityChooserModel$OnChooseActivityListener;

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/widget/HtcActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v5, p0, v1}, Lcom/htc/widget/HtcActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Lcom/htc/widget/HtcActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/htc/widget/HtcActivityChooserModel$1;

    invoke-direct {v6, p0, v3}, Lcom/htc/widget/HtcActivityChooserModel$1;-><init>(Lcom/htc/widget/HtcActivityChooserModel;Landroid/content/ComponentName;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v4, v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoryMaxSize()I
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistorySize()I
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActivitySorter(Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/widget/HtcActivityChooserModel$ActivitySorter;

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->sortActivities()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowedPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setDefaultActivity(I)V
    .locals 7

    iget-object v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v5, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    if-eqz v3, :cond_0

    iget v5, v3, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v6, v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a0

    add-float v4, v5, v6

    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6, v4}, Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcActivityChooserModel;->addHisoricalRecord(Lcom/htc/widget/HtcActivityChooserModel$HistoricalRecord;)Z

    return-void

    :cond_0
    const/high16 v4, 0x3f80

    goto :goto_0
.end method

.method public setExcludedPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setHistoryMaxSize(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mHistoryMaxSize:I

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->sortActivities()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->loadActivitiesLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIntent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/htc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/widget/HtcActivityChooserModel;->mIntent:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/htc/widget/HtcActivityChooserModel;->loadActivitiesLocked()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setOnChooseActivityListener(Lcom/htc/widget/HtcActivityChooserModel$OnChooseActivityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/widget/HtcActivityChooserModel$OnChooseActivityListener;

    return-void
.end method
