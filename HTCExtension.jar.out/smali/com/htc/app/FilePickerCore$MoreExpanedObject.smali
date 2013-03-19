.class Lcom/htc/app/FilePickerCore$MoreExpanedObject;
.super Ljava/lang/Object;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreExpanedObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;
    }
.end annotation


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mDataSourceType:I

.field private mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

.field private mFolderFileComparator:Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;

.field private mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

.field private mFolderScanner:Lcom/htc/app/FolderScanner;

.field private mFolderViewLayout:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mNeedReLoad:Z

.field private mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field mResultItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScanningPath:[Ljava/lang/String;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field public scanEndRunnable:Ljava/lang/Runnable;

.field private scanThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerCore;Landroid/view/ViewGroup;I)V
    .locals 6
    .parameter
    .parameter "moreExpandableLayout"
    .parameter "dataSourceType"

    .prologue
    const/4 v1, 0x0

    .line 1964
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    .line 1601
    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    .line 1603
    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mAccountId:Ljava/lang/String;

    .line 1604
    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderFileComparator:Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;

    .line 1605
    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    .line 1607
    new-instance v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanEndRunnable:Ljava/lang/Runnable;

    .line 1658
    new-instance v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$2;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHandler:Landroid/os/Handler;

    .line 2026
    new-instance v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$3;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 2036
    new-instance v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 2066
    new-instance v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1965
    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 1966
    iput-object p2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    .line 1967
    iput p3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    .line 1968
    const v0, 0x20200ad

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 1970
    const v0, 0x20200ae

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    .line 1971
    new-instance v0, Lcom/htc/app/FolderScanner;

    #getter for: Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/app/FilePickerCore;->access$2100(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v1

    #getter for: Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/app/FilePickerCore;->access$3900(Lcom/htc/app/FilePickerCore;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {p1}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v3

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {p1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/FolderScanner;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/app/FilePickerUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    .line 1973
    new-instance v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderFileComparator:Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;

    .line 1974
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerCore;Landroid/view/ViewGroup;ILcom/htc/app/FilePickerCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1591
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;-><init>(Lcom/htc/app/FilePickerCore;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1591
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->reInit(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1591
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadFolders()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FolderScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1591
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    iget v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1591
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->showRefreshAnimationOnViewHeader(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadUpFolders()Z

    move-result v0

    return v0
.end method

.method private cancelScanFiles(J)V
    .locals 4
    .parameter "waitSec"

    .prologue
    .line 1844
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    if-eqz v1, :cond_0

    .line 1845
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FolderScanner;->stopScan()V

    .line 1846
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 1848
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setScanThreadMinPriority(Z)V

    .line 1849
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_3

    .line 1850
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    if-eqz v1, :cond_1

    .line 1860
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->clear()V

    .line 1861
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    .line 1862
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1864
    :cond_2
    return-void

    .line 1852
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1853
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setScanThreadMinPriority(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1857
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$3600(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v1

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

    goto :goto_0
.end method

.method private declared-synchronized getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1692
    .local p1, resultList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderFileComparator:Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderFileComparator:Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1695
    :try_start_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderFileComparator:Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1696
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    :cond_0
    monitor-exit p0

    return-object p1

    .line 1696
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1692
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadFolders()V
    .locals 3

    .prologue
    .line 1953
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 1954
    .local v0, dataSourceType:I
    invoke-static {v0}, Lcom/htc/app/FilePickerUtil;->getScanningPathByDataType(I)[Ljava/lang/String;

    move-result-object v1

    .line 1956
    .local v1, rootPath:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1957
    invoke-virtual {p0, v0, v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->doScanTask(I[Ljava/lang/String;)V

    .line 1961
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    .line 1962
    return-void

    .line 1959
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->doScanTask(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadUpFolders()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1931
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 1933
    .local v0, dataSourceType:I
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    aget-object v4, v4, v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 1949
    :goto_0
    return v2

    .line 1936
    :cond_1
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$2100(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    #setter for: Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$3802(Lcom/htc/app/FilePickerCore;Z)Z

    .line 1937
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$3800(Lcom/htc/app/FilePickerCore;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1938
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$3600(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Network connect fail."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1942
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1943
    .local v1, file:Ljava/io/File;
    if-nez v1, :cond_3

    move v2, v3

    .line 1944
    goto :goto_0

    .line 1945
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1946
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->doScanTask(I[Ljava/lang/String;)V

    .line 1948
    iput-boolean v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    goto :goto_0
.end method

.method private reInit(Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter "moreExpandableLayout"
    .parameter "dataSourceType"

    .prologue
    .line 1977
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 1978
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    .line 1979
    iput p2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    .line 1980
    const v0, 0x20200ad

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 1982
    const v0, 0x20200ae

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    .line 1983
    return-void
.end method

.method private showRefreshAnimationOnViewHeader(Z)V
    .locals 14
    .parameter "visabled"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    .line 1792
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/app/FilePickerCore;->access$2100(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1793
    .local v7, rocketImage:Landroid/widget/ImageView;
    const v8, 0x20a0004

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1794
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    .line 1796
    .local v6, rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;
    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    const v9, 0x20200ad

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    .line 1798
    .local v0, htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    invoke-virtual {v0, v10, v6}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 1799
    if-eqz p1, :cond_1

    .line 1800
    invoke-virtual {v0, v10, v6}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 1801
    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/app/FilePickerCore;->access$2100(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20400a2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1803
    .local v2, loadingStr:Ljava/lang/String;
    invoke-virtual {v0, v13, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1804
    if-eqz v6, :cond_0

    .line 1805
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1831
    .end local v2           #loadingStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1807
    :cond_1
    const-wide/16 v3, -0x1

    .line 1808
    .local v3, refreshTime:J
    iget v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    invoke-static {v8}, Lcom/htc/app/FilePickerUtil;->isCloudDataSourceType(I)Z

    move-result v1

    .line 1810
    .local v1, isCloudDataSourceType:Z
    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v8}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1811
    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 1812
    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v8}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v8

    iget v9, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    iget-object v10, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mAccountId:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/app/FilePickerCloudHelper;->getCloudFileListTime(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 1817
    :goto_1
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-nez v8, :cond_2

    .line 1818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1824
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v8}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1825
    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v8}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/htc/app/FilePickerUtil;->getFormatedTime(J)Ljava/lang/String;

    move-result-object v5

    .line 1826
    .local v5, refreshTimeStr:Ljava/lang/String;
    invoke-virtual {v0, v13, v5}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1828
    .end local v5           #refreshTimeStr:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_0

    .line 1829
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 1815
    :cond_4
    iget-object v8, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v8}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v8

    iget v9, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    iget-object v10, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mAccountId:Ljava/lang/String;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/app/FilePickerCloudHelper;->getCloudFileListTime(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    .line 1821
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_2
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1671
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1672
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1675
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    invoke-virtual {v0}, Lcom/htc/app/FolderScanner;->stopScan()V

    .line 1676
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1681
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->clear()V

    .line 1682
    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    .line 1683
    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHandler:Landroid/os/Handler;

    .line 1685
    return-void
.end method

.method doScanTask(I[Ljava/lang/String;)V
    .locals 3
    .parameter "dataSourceType"
    .parameter "strPath"

    .prologue
    .line 1876
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FolderScanner;->isStopStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1877
    iput-object p2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    .line 1878
    iput p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    .line 1880
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v1, :cond_0

    .line 1881
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerFolderAdapter;->setCanSort(Z)V

    .line 1882
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/htc/app/FolderScanner;->setScanPath(I[Ljava/lang/String;Z)V

    .line 1883
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->startScanFiles()V

    .line 1884
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->showRefreshAnimationOnViewHeader(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    :cond_1
    :goto_0
    return-void

    .line 1887
    :catch_0
    move-exception v0

    .line 1888
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method getDataSourceType()I
    .locals 1

    .prologue
    .line 1994
    iget v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    return v0
.end method

.method getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    return-object v0
.end method

.method getFolderViewLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getMoreExpandableHtcListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method isFolderViewLayoutVisibled()Z
    .locals 2

    .prologue
    .line 1897
    const/4 v0, 0x0

    .line 1898
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1901
    :cond_0
    :goto_0
    return v0

    .line 1899
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNeedReLoad()Z
    .locals 1

    .prologue
    .line 1909
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    return v0
.end method

.method setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mAccountId:Ljava/lang/String;

    .line 1991
    return-void
.end method

.method setDataSourceType(I)V
    .locals 0
    .parameter "dataSourceType"

    .prologue
    .line 1998
    iput p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    .line 1999
    return-void
.end method

.method setFolderAdapter(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 3
    .parameter "folderAdapter"

    .prologue
    .line 2006
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v1, :cond_0

    .line 2007
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetInvalidated()V

    .line 2008
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    const v2, 0x20200ae

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    .line 2010
    .local v0, folderMoreExpanView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2012
    if-eqz p1, :cond_1

    .line 2013
    invoke-virtual {p1}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetChanged()V

    .line 2014
    :cond_1
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 2016
    return-void
.end method

.method setFolderViewLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "folderViewLayout"

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    .line 1906
    return-void
.end method

.method setHtcListView(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "moreExpandableHtcListView"

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    .line 2024
    return-void
.end method

.method setNeedReLoad(Z)V
    .locals 0
    .parameter "needReLoad"

    .prologue
    .line 1927
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    .line 1928
    return-void
.end method

.method setScanThreadMinPriority(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1835
    if-eqz p1, :cond_1

    .line 1836
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0
.end method

.method setSortBy(I)V
    .locals 1
    .parameter "sortby"

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v0, p1}, Lcom/htc/app/FilePickerCore;->access$3502(Lcom/htc/app/FilePickerCore;I)I

    .line 1708
    return-void
.end method

.method setSortOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v0, p1}, Lcom/htc/app/FilePickerCore;->access$3402(Lcom/htc/app/FilePickerCore;I)I

    .line 1704
    return-void
.end method

.method sort()V
    .locals 5

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    .line 1714
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$2100(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSelectionType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$2200(Lcom/htc/app/FilePickerCore;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/app/FilePickerFolderAdapter;-><init>(Landroid/content/Context;ILcom/htc/app/FilePickerUtil;Ljava/util/LinkedList;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 1716
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1717
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1718
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1720
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isFolderItemSelectedEnabled:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$2600(Lcom/htc/app/FilePickerCore;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$2700(Lcom/htc/app/FilePickerCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1721
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method

.method public startScanFiles()V
    .locals 2

    .prologue
    .line 1868
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->cancelScanFiles(J)V

    .line 1869
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    .line 1870
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1871
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1872
    return-void
.end method

.method updatePathOfFolderViewHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1913
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_0

    .line 1914
    iget v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    invoke-static {v2}, Lcom/htc/app/FilePickerUtil;->getItemTypeTextByDateSource(I)I

    move-result v0

    .line 1915
    .local v0, itemType:I
    const/16 v2, -0xa

    if-eq v0, v2, :cond_0

    .line 1917
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$3700(Lcom/htc/app/FilePickerCore;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1921
    .local v1, text:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v2, v4, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1924
    .end local v0           #itemType:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 1920
    .restart local v0       #itemType:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$3700(Lcom/htc/app/FilePickerCore;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0
.end method
