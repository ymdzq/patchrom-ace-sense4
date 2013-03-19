.class public abstract Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;,
        Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;,
        Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$QueryHandler;,
        Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;,
        Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;,
        Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    }
.end annotation


# static fields
.field public static final GRID_CHILD_ITEM_PREPARE:I = 0x3

.field public static final GRID_VIEW_ITEM_CLICK:I = 0x0

.field public static final GRID_VIEW_ITEM_DELETE:I = 0x4

.field public static final GRID_VIEW_ITEM_LONG_CLICK:I = 0x1

.field private static final INTRO_ANIMATION_DELAY:I = 0xc8

.field public static final PREPARE_UPDATE_LIST_READY:I = 0x2

.field public static TAG:Ljava/lang/String; = null

.field public static final TYPE_ALBUM_TITLE:I = 0x0

.field public static final TYPE_ARTIST_TITLE:I = 0x1

.field public static final TYPE_GENRE_TITLE:I = 0x2

.field public static final TYPE_PLAYLIST_TITLE:I = 0x3


# instance fields
.field private final libraryStringResId:[[I

.field private mAsyncQuerying:Z

.field protected mChildClickedIndex:I

.field protected mContentObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAlbumId:Ljava/lang/String;

.field protected mCurrentAlbumName:Ljava/lang/String;

.field protected mCurrentArtistId:Ljava/lang/String;

.field protected mCurrentArtistName:Ljava/lang/String;

.field protected mCurrentGenreId:Ljava/lang/String;

.field protected mCurrentGenreName:Ljava/lang/String;

.field protected mCurrentPlaylistId:Ljava/lang/String;

.field protected mCurrentPlaylistName:Ljava/lang/String;

.field protected mDataSetObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

.field protected mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field protected mDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mGlobalClickedIndex:I

.field protected mGridItemClickedType:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field protected mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

.field protected mGridViewHandler:Landroid/os/Handler;

.field protected mGridViewInitFinish:Z

.field protected mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mGridViewPreparator:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

.field protected mGridViewRefreshDisable:Z

.field protected mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

.field protected mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

.field protected mParentClickedIndex:I

.field protected mParentCursor:Landroid/database/Cursor;

.field protected mPlaylistUri:Ljava/lang/String;

.field protected mReScanHandler:Landroid/os/Handler;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field protected mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field protected mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "[MusicAutoHeaderFooterGridViewActivity]"

    sput-object v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 48
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 78
    iput-boolean v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    .line 79
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$1;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 96
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$2;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 120
    sget-object v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 121
    iput v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 122
    iput v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 123
    iput v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 125
    iput-boolean v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 297
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    .line 340
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$5;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    .line 346
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$6;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 360
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$7;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 377
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$8;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    .line 481
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 516
    iput-boolean v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 762
    return-void

    .line 297
    :array_0
    .array-data 0x4
        0x24t 0x0t 0x7t 0x7ft
        0x25t 0x0t 0x7t 0x7ft
        0x26t 0x0t 0x7t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x21t 0x0t 0x7t 0x7ft
        0x22t 0x0t 0x7t 0x7ft
        0x23t 0x0t 0x7t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x30t 0x0t 0x7t 0x7ft
        0x31t 0x0t 0x7t 0x7ft
        0x32t 0x0t 0x7t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x2bt 0x0t 0x7t 0x7ft
        0x2ct 0x0t 0x7t 0x7ft
        0x2dt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->updateGridView()V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 526
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 550
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-nez v1, :cond_1

    .line 528
    new-instance v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;-><init>(Landroid/os/Handler;Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-nez v1, :cond_2

    .line 531
    new-instance v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    .line 533
    :cond_2
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 536
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 544
    if-eqz p1, :cond_4

    .line 545
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 546
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 549
    :cond_4
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateParentMediaList(Landroid/database/Cursor;)V

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCollapseWithScroll()Z
    .locals 6

    .prologue
    .line 215
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 216
    .local v0, firstVisible:I
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v1

    .line 217
    .local v1, lastVisible:I
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v3

    .line 219
    .local v3, parentIndex:I
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumColumn()I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumRow()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int v2, v4, v5

    .line 221
    .local v2, offset:I
    add-int/lit8 v0, v0, -0xa

    .line 222
    if-gez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :cond_0
    add-int/2addr v1, v2

    .line 226
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 229
    :cond_1
    if-lt v3, v0, :cond_2

    if-gt v3, v1, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateGridView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 677
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateGridView+"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "mGridView == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :goto_1
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGridView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParentCursor.getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 687
    :cond_2
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "init medialist and gridview when cursor is changed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    .line 698
    :cond_3
    :goto_2
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateGridView-"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 690
    :cond_4
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "refresh medialist and gridview when cursor is changed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 692
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateParentMediaList(Landroid/database/Cursor;)V

    .line 693
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 694
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 695
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getParentCursor()Landroid/database/Cursor;
.end method

.method protected abstract getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected init(Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "c"
    .parameter "startIntroAnimation"

    .prologue
    .line 580
    sget-object v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-nez v2, :cond_1

    .line 582
    sget-object v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "mGridView == null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    if-eqz v2, :cond_0

    .line 591
    invoke-direct {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->changeCursor(Landroid/database/Cursor;)V

    .line 592
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->showMessageView(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    sget-object v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init : showMessageView"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->hideEmptyErrorView()V

    .line 597
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v3}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 599
    if-eqz p2, :cond_3

    .line 600
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct {v0, v2}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 601
    .local v0, handler:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;
    invoke-virtual {v0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 602
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 607
    .end local v0           #handler:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    sget-object v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init-"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_3
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    goto :goto_1
.end method

.method public isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method protected mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 641
    invoke-virtual {p0, p2}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 642
    .local v0, unknownCursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 643
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v1

    .line 647
    .end local v0           #unknownCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 644
    .restart local v0       #unknownCursor:Landroid/database/Cursor;
    :cond_1
    if-nez v0, :cond_0

    move-object v0, p1

    .line 647
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->isGridViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->isCollapseWithScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    new-instance v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$3;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    .line 272
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setSelection(I)V

    .line 255
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    new-instance v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$4;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->resetSDErrorLayout()V

    .line 212
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 410
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 411
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v4

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->enableShuffleAllMenuIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->enablePlayAllMenuIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    const/16 v0, 0xc

    const v1, 0x7f07000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 420
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/16 v0, 0x16

    const v1, 0x2040218

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 1

    .prologue
    .line 403
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onDeletionCompleted()V

    .line 404
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->onGridViewItemDeleteComplete()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 406
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onDestroy()V

    .line 181
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 189
    iput-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    if-eqz v1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->destroy()V

    .line 200
    :cond_3
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onGridViewChildItemPrepare(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewItemClick(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewItemDelete(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewItemDeleteComplete()V
.end method

.method protected abstract onGridViewItemLongClick(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 452
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 478
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 467
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 469
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 472
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 176
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 430
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 435
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 436
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 438
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 439
    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 441
    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 445
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 430
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onResume()V

    .line 150
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 151
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->onResume()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->showSpinner(Z)V

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 166
    :cond_4
    return-void
.end method

.method protected abstract playAllAction(Z)Z
.end method

.method public setAsyncQueryStatus(Z)V
    .locals 0
    .parameter "isQuerying"

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 523
    return-void
.end method

.method protected abstract setEmptyView()V
.end method

.method protected abstract setTitle()V
.end method

.method protected setTitleWithCount(II)Ljava/lang/String;
    .locals 8
    .parameter "type"
    .parameter "count"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 313
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 317
    const-string v4, ""

    .line 337
    :goto_0
    return-object v4

    .line 320
    :cond_0
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 321
    .local v1, normalTitle:I
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v2, v4, v6

    .line 322
    .local v2, oneCountTitle:I
    iget-object v4, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v0, v4, v7

    .line 324
    .local v0, countsTlte:I
    if-lez p2, :cond_2

    .line 326
    if-ne p2, v6, :cond_1

    if-lez v2, :cond_1

    .line 327
    invoke-virtual {p0, v2}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 329
    .end local v3           #tempString:Ljava/lang/String;
    :cond_1
    if-le p2, v6, :cond_2

    if-lez v0, :cond_2

    .line 330
    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 331
    .restart local v3       #tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 334
    .end local v3           #tempString:Ljava/lang/String;
    :cond_2
    if-lez v1, :cond_3

    .line 335
    invoke-virtual {p0, v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 337
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected showMessageView(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 554
    if-nez p1, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->showDatabaseError()V

    .line 556
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->closeContextMenu()V

    .line 557
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 559
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->isActivityResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 563
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 565
    :cond_1
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "cursor == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :goto_0
    return v0

    .line 567
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 568
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 570
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 572
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->setEmptyView()V

    .line 573
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "cursor.getCount() == 0"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 576
    goto :goto_0
.end method
