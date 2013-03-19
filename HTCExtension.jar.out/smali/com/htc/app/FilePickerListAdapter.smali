.class Lcom/htc/app/FilePickerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilePickerListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;,
        Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;,
        Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;
    }
.end annotation


# static fields
.field static final GARBAGE_MESSAGE:Ljava/lang/String; = "GarbageMessage_LongVacation"

.field private static final ITEM_VIEW_TYPE_FILE:I = 0x0

.field private static final ITEM_VIEW_TYPE_FOLDER:I = 0x1

.field public static final MULTIPLE_SELECTION:I = 0x1

.field public static final NOTIFY_DATASET_CHENGED:I = 0x2

.field public static final NOTIFY_DATASET_INVALIDATED:I = 0x5

.field public static final NOTIFY_RESULT_BY_TYPE_CHENGED:I = 0x4

.field public static final NOTIFY_SEARCH_RESULT_CHENGED:I = 0x3

.field public static final SINGLE_SELECTION:I = 0x0

.field public static final UPDATE_FILELIST:I = 0x0

.field public static final UPDATE_SEARCH_FILE_COUNT:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private headerViewText:Ljava/lang/String;

.field private isGroupByPath:Z

.field private isRemoveMode:Z

.field private mAdapterItems:[Lcom/htc/app/ItemInfo;

.field private mAdapterType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mDbHelper:Lcom/htc/app/FilePickerDBHelper;

.field private mFileCount:I

.field private mFileDate:Ljava/sql/Date;

.field private mFilePicker:Lcom/htc/app/FilePickerCore;

.field private final mFilePickerLayout_ListView_FileItemView:I

.field private final mFilePickerLayout_ListView_FolderItemView:I

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileScanner:Lcom/htc/app/FileScanner;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:Landroid/widget/Filter;

.field private mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputStringLowerCase:Ljava/lang/String;

.field private mItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsTimeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOriginalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionType:I

.field private nameForTextView_DefaultColor:Landroid/content/res/ColorStateList;

.field private notifyDataSetChangedRunnable:Ljava/lang/Runnable;

.field private notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

.field private notifyFileScanEnd:Ljava/lang/Runnable;

.field private notifyResultByTypeRunnable:Ljava/lang/Runnable;

.field private notifySearchResultRunnable:Ljava/lang/Runnable;

.field private scanThread:Ljava/lang/Thread;

.field private updateFileList:Ljava/lang/Runnable;

.field private updateHeaderName:Ljava/lang/Runnable;

.field private updateSearchFileCount:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerUtil;Lcom/htc/app/FilePickerDBHelper;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "selectionType"
    .parameter "filePicker"
    .parameter "filePickerUtil"
    .parameter "dbHelper"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcom/htc/app/FilePickerListAdapter;->isRemoveMode:Z

    .line 57
    const v0, 0x2090031

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerLayout_ListView_FolderItemView:I

    .line 58
    const v0, 0x2090030

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerLayout_ListView_FileItemView:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    .line 84
    new-array v0, v1, [Lcom/htc/app/ItemInfo;

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    .line 419
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->nameForTextView_DefaultColor:Landroid/content/res/ColorStateList;

    .line 603
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 685
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    .line 688
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    .line 115
    iput-object p2, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    .line 117
    iput-object p6, p0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    .line 118
    iput-object p5, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 120
    iput p3, p0, Lcom/htc/app/FilePickerListAdapter;->mSelectionType:I

    .line 121
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    .line 122
    iput-object p4, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    .line 123
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FileScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->removeRedundantPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/app/FilePickerListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/app/FilePickerListAdapter;->isCanNotifyDataChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/app/FilePickerListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/app/FilePickerListAdapter;[Lcom/htc/app/ItemInfo;)[Lcom/htc/app/ItemInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    return-object p1
.end method

.method private cancelScanFiles(J)V
    .locals 4
    .parameter "waitSec"

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->removeMessagesAndCallbacks()V

    .line 1107
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 1108
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v1}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 1112
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V

    .line 1113
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_4

    .line 1114
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Thread;->join(J)V

    .line 1119
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1120
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 1129
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    if-eqz v1, :cond_3

    .line 1130
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->setNoFileViewEmptyTextOfTypeView()V

    .line 1132
    :cond_3
    return-void

    .line 1116
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1117
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1124
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop Thread Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private clearOriginalValues()V
    .locals 3

    .prologue
    .line 888
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 889
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 897
    :cond_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    goto :goto_0

    .line 895
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private compareStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"
    .parameter "valueText"

    .prologue
    .line 1496
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareStrings("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "itemInfo"

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 431
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p2}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const v1, 0x2090031

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 453
    :goto_0
    return-object p1

    .line 434
    :cond_0
    const v1, 0x2090030

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private isCanNotifyDataChanged()Z
    .locals 2

    .prologue
    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_0

    .line 1567
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1568
    const/4 v0, 0x1

    .line 1570
    :cond_0
    return v0
.end method

.method private removeRedundantPath(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 610
    const/4 v2, 0x0

    .line 654
    :cond_0
    return-object v2

    .line 611
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v2, newList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 613
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    .line 614
    .local v1, item:Lcom/htc/app/ItemInfo;
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 615
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 612
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 620
    :cond_4
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-nez v3, :cond_2

    .line 621
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method IsEnabledGroupByPath()Z
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    return v0
.end method

.method public NotifyFileScanEnd()V
    .locals 2

    .prologue
    .line 1404
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$9;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$9;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    .line 1413
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1415
    :cond_0
    return-void
.end method

.method public NotifyListChanged(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1203
    packed-switch p1, :pswitch_data_0

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1205
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1206
    const-string v0, "FP_Performance"

    const-string v1, "FileManager, NotifyDataSetChanged(UPDATE_FILELIST)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->getFileCount()I

    move-result v0

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 1208
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$3;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    .line 1216
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1220
    :pswitch_1
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$4;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    .line 1226
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1230
    :pswitch_2
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$5;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$5;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyResultByTypeRunnable:Ljava/lang/Runnable;

    .line 1252
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyResultByTypeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1255
    :pswitch_3
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$6;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$6;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifySearchResultRunnable:Ljava/lang/Runnable;

    .line 1302
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifySearchResultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1306
    :pswitch_4
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$7;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$7;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    .line 1315
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1319
    :pswitch_5
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$8;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$8;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    .line 1324
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method add(Lcom/htc/app/ItemInfo;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 780
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->getCurrentItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 789
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 791
    return-void

    .line 786
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1561
    const/4 v0, 0x0

    return v0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/htc/app/FilePickerListAdapter;->clearOriginalValues()V

    .line 922
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 924
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 925
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 907
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 908
    invoke-direct {p0}, Lcom/htc/app/FilePickerListAdapter;->clearOriginalValues()V

    .line 909
    iput v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 910
    new-array v0, v1, [Lcom/htc/app/ItemInfo;

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 911
    return-void
.end method

.method clearmItemsTimeMap()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 693
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1062
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 1063
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->removeMessagesAndCallbacks()V

    .line 1064
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerListAdapter;->cancelScanFiles(J)V

    .line 1065
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    .line 1066
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->close()V

    .line 1068
    :cond_0
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 1069
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    .line 1070
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    .line 1071
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 1072
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    .line 1073
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    .line 1074
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    .line 1075
    return-void
.end method

.method getAdapterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v0, v1

    .line 146
    :cond_0
    return v0
.end method

.method public getCurrentFileCount()I
    .locals 6

    .prologue
    .line 1482
    const/4 v1, 0x0

    .line 1483
    .local v1, fileCount:I
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v5, :cond_1

    .line 1484
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .local v0, arr$:[Lcom/htc/app/ItemInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 1485
    .local v3, itemInfo:Lcom/htc/app/ItemInfo;
    if-eqz v3, :cond_0

    .line 1486
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1487
    add-int/lit8 v1, v1, 0x1

    .line 1484
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1492
    .end local v0           #arr$:[Lcom/htc/app/ItemInfo;
    .end local v2           #i$:I
    .end local v3           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v4           #len$:I
    :cond_1
    return v1
.end method

.method getCurrentItemList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v6, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 796
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/htc/app/ItemInfo;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/app/ItemInfo;

    .line 797
    .local v0, ItemInfos:[Lcom/htc/app/ItemInfo;
    if-eqz v0, :cond_1

    array-length v7, v0

    if-lez v7, :cond_1

    .line 798
    move-object v1, v0

    .local v1, arr$:[Lcom/htc/app/ItemInfo;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v1, v2

    .line 799
    .local v3, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getItemDataSourceType()I

    move-result v4

    .line 800
    .local v4, itemTypeId:I
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7, v4}, Lcom/htc/app/FilePickerUtil;->checkToShowItem(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 801
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    .end local v0           #ItemInfos:[Lcom/htc/app/ItemInfo;
    .end local v1           #arr$:[Lcom/htc/app/ItemInfo;
    .end local v2           #i$:I
    .end local v3           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v4           #itemTypeId:I
    .end local v5           #len$:I
    :cond_1
    return-object v6
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 1473
    iget v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;-><init>(Lcom/htc/app/FilePickerListAdapter;Lcom/htc/app/FilePickerListAdapter$1;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-nez v1, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 177
    :goto_0
    return-object v1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 171
    .local v0, endIndex:I
    if-le p1, v0, :cond_1

    .line 172
    move p1, v0

    .line 174
    :cond_1
    if-gez p1, :cond_2

    .line 175
    const/4 p1, 0x0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    aget-object v1, v1, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1524
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/ItemInfo;

    .line 1525
    .local v0, item:Lcom/htc/app/ItemInfo;
    if-nez v0, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return v1

    .line 1527
    :cond_1
    invoke-virtual {v0}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1528
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getListItemLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method getOriginalCount()I
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-nez v1, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    .line 153
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 157
    :cond_2
    iget-boolean v1, p0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSelectItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1446
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 1448
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 1449
    .local v6, originalValuesObjects:[Ljava/lang/Object;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    .local v5, originalValuesObject:Ljava/lang/Object;
    move-object v2, v5

    .line 1450
    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 1451
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1452
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1456
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v4           #len$:I
    .end local v5           #originalValuesObject:Ljava/lang/Object;
    .end local v6           #originalValuesObjects:[Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v7, :cond_3

    .line 1457
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .local v0, arr$:[Lcom/htc/app/ItemInfo;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v2, v0, v1

    .line 1458
    .restart local v2       #itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1459
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1464
    .end local v0           #arr$:[Lcom/htc/app/ItemInfo;
    .end local v1           #i$:I
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v4           #len$:I
    :cond_3
    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 35
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/app/ItemInfo;

    .line 197
    .local v24, item:Lcom/htc/app/ItemInfo;
    if-nez p2, :cond_0

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 200
    :cond_0
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 201
    const v30, 0x20200c5

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcListItemSeparator;

    .line 204
    .local v17, htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    if-nez v17, :cond_1

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 206
    const v30, 0x20200c5

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    check-cast v17, Lcom/htc/widget/HtcListItemSeparator;

    .line 210
    .restart local v17       #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/app/ItemInfo;->getItemTextPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 211
    .local v13, filePath:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 212
    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 398
    .end local v13           #filePath:Ljava/lang/String;
    .end local v17           #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    :cond_2
    :goto_0
    return-object p2

    .line 216
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v4

    .line 218
    .local v4, checked:Z
    const v30, 0x20200b2

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListItem;

    .line 219
    .local v25, itemView:Lcom/htc/widget/HtcListItem;
    if-nez v25, :cond_4

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 221
    const v30, 0x20200b2

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25           #itemView:Lcom/htc/widget/HtcListItem;
    check-cast v25, Lcom/htc/widget/HtcListItem;

    .line 223
    .restart local v25       #itemView:Lcom/htc/widget/HtcListItem;
    :cond_4
    const v30, 0x20200b6

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    .line 226
    .local v16, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    const v30, 0x20200b5

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 229
    .local v10, fileItemIcon:Landroid/widget/ImageView;
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, fileName:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isCloudItem()Z

    move-result v20

    .line 231
    .local v20, isCloudItem:Z
    if-nez v20, :cond_6

    .line 232
    const v30, 0x20200b7

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcStarButton;

    .line 234
    .local v9, favoriteStarButton:Lcom/htc/widget/HtcStarButton;
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcStarButton;->setTag(Ljava/lang/Object;)V

    .line 235
    const/16 v21, 0x0

    .line 236
    .local v21, isFavFilePath:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    .line 238
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/app/FilePickerDBHelper;->IsFavFilePath(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v21

    .line 244
    :cond_5
    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/app/ItemInfo;->setFavorite(Z)V

    .line 245
    new-instance v30, Lcom/htc/app/FilePickerListAdapter$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/FilePickerListAdapter$1;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcStarButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 287
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcStarButton;->setVisibility(I)V

    .line 288
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isFavorite()Z

    move-result v22

    .line 289
    .local v22, isFavorite:Z
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcStarButton;->setChecked(Z)V

    .line 292
    .end local v9           #favoriteStarButton:Lcom/htc/widget/HtcStarButton;
    .end local v21           #isFavFilePath:Z
    .end local v22           #isFavorite:Z
    :cond_6
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v23

    .line 293
    .local v23, isFolder:Z
    if-nez v23, :cond_7

    .line 294
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v14, folder:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 296
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 297
    const/16 v23, 0x1

    .line 301
    .end local v14           #folder:Ljava/io/File;
    :cond_7
    if-eqz v23, :cond_9

    .line 302
    sget v30, Lcom/htc/app/FilePickerUtil;->drawableResId_Folder_Icon:I

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    :goto_2
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->getItemDataSourceType()I

    move-result v29

    .line 309
    .local v29, serviceType:I
    const-string v28, ""

    .line 313
    .local v28, prefixWord:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_c

    .line 314
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 316
    .local v12, fileNameLowerCase:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v19

    .line 317
    .local v19, inputStrinLength:I
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 319
    .local v5, displayString:Landroid/text/SpannableString;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v18, v30, -0x1

    .line 321
    .local v18, index:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    add-int/lit8 v31, v18, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const/16 v30, -0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-le v0, v1, :cond_a

    .line 324
    :try_start_1
    new-instance v30, Landroid/text/style/ForegroundColorSpan;

    const/16 v31, -0x1

    invoke-direct/range {v30 .. v31}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v31, v19, v18

    const/16 v32, 0x21

    move-object/from16 v0, v30

    move/from16 v1, v18

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "fileName:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "==> index="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ",(inputStrinLength + index)="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    add-int v32, v19, v18

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 334
    :cond_8
    :goto_4
    :try_start_2
    new-instance v30, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "text_selection_highlight"

    const v34, 0x2060001

    invoke-static/range {v32 .. v34}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    invoke-direct/range {v30 .. v31}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v31, v19, v18

    const/16 v32, 0x21

    move-object/from16 v0, v30

    move/from16 v1, v18

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 340
    :catch_0
    move-exception v8

    .line 341
    .local v8, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Get HtcResource context failed"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 239
    .end local v5           #displayString:Landroid/text/SpannableString;
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v12           #fileNameLowerCase:Ljava/lang/String;
    .end local v18           #index:I
    .end local v19           #inputStrinLength:I
    .end local v23           #isFolder:Z
    .end local v28           #prefixWord:Ljava/lang/String;
    .end local v29           #serviceType:I
    .restart local v9       #favoriteStarButton:Lcom/htc/widget/HtcStarButton;
    .restart local v21       #isFavFilePath:Z
    :catch_1
    move-exception v7

    .line 240
    .local v7, e:Ljava/lang/Exception;
    const-string v30, "FilePickerWithDB"

    const-string v31, "#### mDbHelper.isFavChanged() fail"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 304
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #favoriteStarButton:Lcom/htc/widget/HtcStarButton;
    .end local v21           #isFavFilePath:Z
    .restart local v23       #isFolder:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/htc/app/FilePickerUtil;->getFileTypeImage(Ljava/lang/String;)I

    move-result v6

    .line 305
    .local v6, drawableResId:I
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 329
    .end local v6           #drawableResId:I
    .restart local v5       #displayString:Landroid/text/SpannableString;
    .restart local v12       #fileNameLowerCase:Ljava/lang/String;
    .restart local v18       #index:I
    .restart local v19       #inputStrinLength:I
    .restart local v28       #prefixWord:Ljava/lang/String;
    .restart local v29       #serviceType:I
    :catch_2
    move-exception v8

    .line 330
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "error:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 344
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 350
    .end local v5           #displayString:Landroid/text/SpannableString;
    .end local v12           #fileNameLowerCase:Ljava/lang/String;
    .end local v18           #index:I
    .end local v19           #inputStrinLength:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FilePickerListAdapter;->mSelectionType:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 352
    const v30, 0x20200b3

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcCheckBox;

    .line 354
    .local v15, htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v15, :cond_b

    .line 355
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 356
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setTag(Ljava/lang/Object;)V

    .line 357
    new-instance v30, Lcom/htc/app/FilePickerListAdapter$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/FilePickerListAdapter$2;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 379
    if-eqz v4, :cond_d

    .line 380
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 387
    .end local v15           #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    :cond_b
    :goto_6
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->lastModified()J

    move-result-wide v26

    .line 389
    .local v26, lastModified:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/sql/Date;->setTime(J)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/htc/app/FilePickerUtil;->getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    .end local v26           #lastModified:J
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_5

    .line 383
    .restart local v15       #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    :cond_d
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1542
    const/4 v0, 0x2

    return v0
.end method

.method groupByPath(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1020
    iput-boolean p1, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    .line 1021
    return-void
.end method

.method public insert(Lcom/htc/app/ItemInfo;I)V
    .locals 3
    .parameter "object"
    .parameter "index"

    .prologue
    .line 825
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 826
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 828
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 832
    .local v0, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 833
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/app/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/app/ItemInfo;

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 835
    .end local v0           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 836
    return-void

    .line 828
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    move-object v0, v1

    check-cast v0, Lcom/htc/app/ItemInfo;

    .line 464
    .local v0, itemInfo:Lcom/htc/app/ItemInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    :cond_0
    const/4 v1, 0x0

    .line 467
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v0, :cond_1

    .line 1511
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "notifyDataSetInvalidated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 1515
    :cond_1
    return-void
.end method

.method performActionModeFinish()V
    .locals 2

    .prologue
    .line 1668
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    if-eqz v1, :cond_0

    .line 1669
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 1670
    .local v0, actionMode:Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1674
    .end local v0           #actionMode:Landroid/view/ActionMode;
    :cond_0
    return-void
.end method

.method putItemToMapByTime(Lcom/htc/app/ItemInfo;I)V
    .locals 13
    .parameter "itemInfo"
    .parameter "timeGroup"

    .prologue
    .line 696
    invoke-virtual {p1}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, fileName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 698
    .local v10, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 699
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    check-cast v10, Ljava/util/ArrayList;

    .line 704
    .restart local v10       #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    :goto_0
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget v11, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 706
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v5, resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v4, noSeperatorList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v8, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 713
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 714
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    const-string v6, ""

    .line 715
    .local v6, seperator:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 716
    .local v3, key:I
    const/4 v11, 0x1

    if-ne v3, v11, :cond_1

    .line 717
    const-string v6, "TODAY"

    .line 727
    :goto_2
    invoke-static {v6}, Lcom/htc/app/ItemInfo;->getLocalGroupTypeInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v9

    .line 728
    .local v9, typeItem:Lcom/htc/app/ItemInfo;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v12, v11}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 730
    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 731
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v4, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 701
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:I
    .end local v4           #noSeperatorList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v5           #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v6           #seperator:Ljava/lang/String;
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    .end local v8           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v9           #typeItem:Lcom/htc/app/ItemInfo;
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10       #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    goto :goto_0

    .line 718
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:I
    .restart local v4       #noSeperatorList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .restart local v5       #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .restart local v6       #seperator:Ljava/lang/String;
    .restart local v7       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    .restart local v8       #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    const/4 v11, 0x2

    if-ne v3, v11, :cond_2

    .line 719
    const-string v6, "YESTERDAY"

    goto :goto_2

    .line 720
    :cond_2
    const/4 v11, 0x3

    if-ne v3, v11, :cond_3

    .line 721
    const-string v6, "ONE WEEK"

    goto :goto_2

    .line 722
    :cond_3
    const/4 v11, 0x4

    if-ne v3, v11, :cond_4

    .line 723
    const-string v6, "ONE MONTH"

    goto :goto_2

    .line 725
    :cond_4
    const-string v6, "OLDER"

    goto :goto_2

    .line 733
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    .end local v3           #key:I
    .end local v6           #seperator:Ljava/lang/String;
    :cond_5
    iput-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 734
    iput-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 735
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 736
    return-void
.end method

.method putItemToMapByType(Lcom/htc/app/ItemInfo;)V
    .locals 14
    .parameter "itemInfo"

    .prologue
    .line 742
    invoke-virtual {p1}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, fileName:Ljava/lang/String;
    const-string v12, "."

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v9, v12, 0x1

    .line 744
    .local v9, start:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 745
    .local v1, end:I
    const-string v3, ""

    .line 746
    .local v3, extension:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    if-lez v1, :cond_2

    if-ge v9, v1, :cond_2

    .line 749
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 751
    :cond_2
    const/4 v11, 0x0

    .line 752
    .local v11, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 753
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    check-cast v11, Ljava/util/ArrayList;

    .line 758
    .restart local v11       #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    :goto_1
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v13, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    invoke-virtual {p0, v11}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-interface {v13, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v7, resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 764
    .local v8, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 765
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, key:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/app/ItemInfo;->getLocalGroupTypeInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v10

    .line 767
    .local v10, typeItem:Lcom/htc/app/ItemInfo;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v7, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 755
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v8           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;>;"
    .end local v10           #typeItem:Lcom/htc/app/ItemInfo;
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .restart local v11       #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    goto :goto_1

    .line 770
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .restart local v8       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;>;"
    :cond_4
    iput-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 771
    iput-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 772
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v12, v12

    mul-int/lit8 v0, v12, 0x2

    .line 773
    .local v0, count:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-lt v12, v0, :cond_0

    .line 774
    const/4 v12, 0x3

    invoke-virtual {p0, v12}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0
.end method

.method public remove(Lcom/htc/app/ItemInfo;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 850
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 851
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 853
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 858
    .local v0, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 859
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/app/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/app/ItemInfo;

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 860
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 862
    .end local v0           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    return-void

    .line 853
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeExtSdItems()Z
    .locals 8

    .prologue
    .line 1341
    const/4 v1, 0x1

    .line 1343
    .local v1, isNeedReScan:Z
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v5}, Lcom/htc/app/FileScanner;->isStopScan()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1344
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v5, :cond_4

    .line 1345
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1346
    :cond_0
    const/4 v5, 0x1

    .line 1369
    :goto_0
    return v5

    .line 1347
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1348
    .local v4, showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 1349
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1350
    .local v3, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5, v3}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1353
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1355
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    monitor-enter v6

    .line 1356
    :try_start_0
    iput-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 1357
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    iget-object v6, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    monitor-enter v6

    .line 1360
    :try_start_1
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/htc/app/ItemInfo;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/app/ItemInfo;

    iput-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 1361
    const/4 v1, 0x0

    .line 1362
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1363
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_4
    :goto_2
    move v5, v1

    .line 1369
    goto :goto_0

    .line 1357
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v4       #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1362
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1366
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_5
    const/4 v1, 0x1

    .line 1367
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    goto :goto_2
.end method

.method removeMessagesAndCallbacks()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1080
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1081
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1084
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1085
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1086
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1087
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateHeaderName:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1088
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1089
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1090
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1091
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifySearchResultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1093
    :cond_0
    return-void
.end method

.method public resetAllChecked()V
    .locals 5

    .prologue
    .line 1433
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v4, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .local v0, arr$:[Lcom/htc/app/ItemInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1435
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/app/ItemInfo;->setChecked(Z)V

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1438
    .end local v0           #arr$:[Lcom/htc/app/ItemInfo;
    .end local v1           #i$:I
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method setAdapterType(Ljava/lang/String;)V
    .locals 0
    .parameter "adapterType"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCheckBoxMode(Z)V
    .locals 0
    .parameter "isRemoveMode"

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/htc/app/FilePickerListAdapter;->isRemoveMode:Z

    .line 482
    return-void
.end method

.method public setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 1057
    return-void
.end method

.method setFileScanner(Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter "fileScanner"

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    .line 1029
    return-void
.end method

.method setFileSorter(Lcom/htc/app/FileSorter;)V
    .locals 0
    .parameter "fileSorter"

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 1033
    return-void
.end method

.method setHeaderViewText(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->headerViewText:Ljava/lang/String;

    .line 661
    return-void
.end method

.method setScanThreadMinPriority(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1097
    if-eqz p1, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 1551
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    .line 1552
    return-void
.end method

.method showItems()V
    .locals 10

    .prologue
    .line 1374
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    const/4 v7, 0x0

    .line 1377
    .local v7, showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v8}, Lcom/htc/app/FileScanner;->isStopScan()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1378
    new-instance v7, Ljava/util/LinkedList;

    .end local v7           #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1379
    .restart local v7       #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 1380
    .local v5, originalValuesObject:[Ljava/lang/Object;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v3, v0, v1

    .local v3, itemInfoObject:Ljava/lang/Object;
    move-object v2, v3

    .line 1381
    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 1382
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isRecentFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1380
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1385
    :cond_3
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->getItemDataSourceType()I

    move-result v6

    .line 1386
    .local v6, serviceType:I
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8, v6}, Lcom/htc/app/FilePickerUtil;->checkToShowItem(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1387
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1390
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v3           #itemInfoObject:Ljava/lang/Object;
    .end local v6           #serviceType:I
    :cond_4
    iget-object v9, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    monitor-enter v9

    .line 1391
    const/4 v8, 0x0

    :try_start_0
    new-array v8, v8, [Lcom/htc/app/ItemInfo;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/app/ItemInfo;

    iput-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 1392
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1392
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method sort(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, originalList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v3, newValue:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-boolean v5, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    if-eqz v5, :cond_4

    .line 936
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 937
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    .line 938
    .local v1, item:Lcom/htc/app/ItemInfo;
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 939
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 940
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, v4}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 941
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 942
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 944
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .end local v2           #j:I
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 951
    .end local v1           #item:Lcom/htc/app/ItemInfo;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    .line 952
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, v4}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 953
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 954
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 960
    .end local v0           #i:I
    .end local v2           #j:I
    :cond_4
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, p1}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 962
    :cond_5
    return-object v3
.end method

.method sort()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    monitor-enter v1

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 973
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/app/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/app/ItemInfo;

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 975
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0

    .line 973
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method sortRecentAndFavorite()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 980
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    if-eqz v8, :cond_6

    .line 981
    iget-boolean v8, p0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 982
    const-string v8, "FilePickerWithDB"

    const-string v9, "#### mItemsTimeMap != null"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v3, resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v6, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 987
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 988
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    const-string v4, ""

    .line 989
    .local v4, seperator:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 990
    .local v2, key:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 991
    const-string v4, "TODAY"

    .line 1001
    :goto_1
    invoke-static {v4}, Lcom/htc/app/ItemInfo;->getLocalGroupTypeInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v7

    .line 1002
    .local v7, typeItem:Lcom/htc/app/ItemInfo;
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    iget-object v9, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v9, v8}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1005
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 992
    .end local v7           #typeItem:Lcom/htc/app/ItemInfo;
    :cond_1
    if-ne v2, v10, :cond_2

    .line 993
    const-string v4, "YESTERDAY"

    goto :goto_1

    .line 994
    :cond_2
    const/4 v8, 0x3

    if-ne v2, v8, :cond_3

    .line 995
    const-string v4, "ONE WEEK"

    goto :goto_1

    .line 996
    :cond_3
    const/4 v8, 0x4

    if-ne v2, v8, :cond_4

    .line 997
    const-string v4, "ONE MONTH"

    goto :goto_1

    .line 999
    :cond_4
    const-string v4, "OLDER"

    goto :goto_1

    .line 1008
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    .end local v2           #key:I
    .end local v4           #seperator:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/htc/app/ItemInfo;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/app/ItemInfo;

    iput-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 1009
    invoke-virtual {p0, v10}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 1013
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    .end local v6           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_6
    return-void
.end method

.method public startScanFiles()V
    .locals 2

    .prologue
    .line 1144
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerListAdapter;->cancelScanFiles(J)V

    .line 1145
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 1146
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1147
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1148
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 1425
    :cond_0
    return-void
.end method

.method public updateItemInfoList(Ljava/util/LinkedList;I)V
    .locals 5
    .parameter
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, itemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 885
    :cond_0
    return-void

    .line 870
    :cond_1
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 871
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 872
    .local v0, Length:I
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 873
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    if-ge p2, v0, :cond_0

    .line 875
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    monitor-enter v4

    .line 876
    :try_start_0
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 877
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v0, v3

    .line 879
    if-ge p2, v0, :cond_0

    .line 881
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    aput-object v2, v3, p2

    .line 882
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
