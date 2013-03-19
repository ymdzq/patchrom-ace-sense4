.class Lcom/htc/fragment/widget/CarouselModel;
.super Ljava/lang/Object;
.source "CarouselModel.java"

# interfaces
.implements Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
.implements Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselModel$Row;
    }
.end annotation


# static fields
.field static final DEBUG_LOADERS:Z = false

.field static final LOCAL_LOGV:Z = false

.field private static final sInitCapacity:I = 0x14

.field private static final sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private final mCarousel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/fragment/widget/CarouselFragment;",
            ">;"
        }
    .end annotation
.end field

.field mContentCursor:Landroid/database/MatrixCursor;

.field private mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

.field mMemoryModeCursor:Landroid/database/MatrixCursor;

.field mMemoryModeRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fragment/widget/CarouselModel$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mTabID:Ljava/lang/String;

.field private mTabPrefix:Ljava/lang/String;

.field private mTaskUri:Landroid/net/Uri;

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fragment/widget/CarouselHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/htc/fragment/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mContentCursor:Landroid/database/MatrixCursor;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private addExistingTabMenoryMode(Lcom/htc/fragment/widget/TaskInfo;I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselModel$Row;

    iget-object v0, v1, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/fragment/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    return-void
.end method

.method private addTabMemoryModeAfterBatch(Ljava/lang/Object;)V
    .locals 5

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->convertCursorToArray()V

    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    iget v3, v1, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/fragment/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    sget-object v3, Lcom/htc/fragment/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/fragment/widget/CarouselModel$Row;

    invoke-direct {v4, p0, v2}, Lcom/htc/fragment/widget/CarouselModel$Row;-><init>(Lcom/htc/fragment/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselModel;->onAddTabComplete()V

    return-void

    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/htc/fragment/widget/CarouselModel;->addExistingTabMenoryMode(Lcom/htc/fragment/widget/TaskInfo;I)V

    goto :goto_0
.end method

.method private convertCursorToArray()V
    .locals 37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_1

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v35, "_id"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v35, "task_tag"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    const-string v35, "task_name"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v35, "alternative_name"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v35, "intent"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v35, "res_package"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v35, "icon_resource"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v35, "selected_icon_resource"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v35, "overlay_resource"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v35, "task_order"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v35, "is_host"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v35, "is_removable"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v35, "count_text"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v35, "count_text_visible"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "_id"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "task_tag"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "task_name"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "alternative_name"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "intent"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "res_package"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "icon_resource"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "selected_icon_resource"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "overlay_resource"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "task_order"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "is_host"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "is_removable"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "count_text"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    const-string v36, "count_text_visible"

    invoke-virtual/range {v35 .. v36}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v35

    if-gtz v35, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v14

    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    :cond_3
    aput-object v28, v25, v34

    move/from16 v0, v29

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v30

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v4

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v16

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v24

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v12

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v27

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v22

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v32

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v18

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v20

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v25, v8

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    new-instance v36, Lcom/htc/fragment/widget/CarouselModel$Row;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselModel$Row;-><init>(Lcom/htc/fragment/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v35

    if-nez v35, :cond_0

    goto/16 :goto_0
.end method

.method private findTag(Ljava/lang/String;)I
    .locals 6

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v5, "task_tag"

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselModel$Row;

    iget-object v4, v1, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aget-object v2, v4, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1

    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object p0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object p1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method private initialMemoryModeCursor()V
    .locals 2

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/fragment/widget/CarouselSetting;->TAKCOLUMNNAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    return-void
.end method

.method private updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->convertCursorToArray()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->updateTabMemoryMode(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselModel;->onAddTabComplete()V

    return-void
.end method


# virtual methods
.method public addTabMemoryMode(ILjava/lang/Object;)V
    .locals 5

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    iget v3, v1, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/fragment/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    sget-object v3, Lcom/htc/fragment/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/fragment/widget/CarouselModel$Row;

    invoke-direct {v4, p0, v2}, Lcom/htc/fragment/widget/CarouselModel$Row;-><init>(Lcom/htc/fragment/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/htc/fragment/widget/CarouselModel;->addExistingTabMenoryMode(Lcom/htc/fragment/widget/TaskInfo;I)V

    goto :goto_0
.end method

.method addTaskToDatabase(Landroid/content/Context;Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 9

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x386

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task_tag=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "task_order"

    move-object v2, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startCheckInsertOrUpdate(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method buildContentCursor(Landroid/database/Cursor;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselModel;->initContentCursor()V

    const-string v13, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v13, "task_tag"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "task_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v13, "alternative_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v13, "res_package"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v13, "overlay_resource"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-gtz v13, :cond_1

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/CarouselFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/CarouselModel;->mContentCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v13, v14}, Lcom/htc/fragment/widget/CarouselFragment;->onContentCursorBuildComplete(Landroid/database/Cursor;)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/fragment/widget/CarouselModel;->mContentCursor:Landroid/database/MatrixCursor;

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    const/4 v15, 0x3

    aput-object v3, v14, v15

    const/4 v15, 0x4

    aput-object v9, v14, v15

    const/4 v15, 0x5

    aput-object v7, v14, v15

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    return-void
.end method

.method clean()V
    .locals 0

    return-void
.end method

.method cleanTasks()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method cleanTasks(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteTabMemoryMode(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->convertCursorToArray()V

    :cond_1
    const/4 v1, 0x0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselModel$Row;

    :cond_2
    return-void
.end method

.method getHandler(Landroid/content/Context;)Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    goto :goto_0
.end method

.method final getTabSpecTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fragment/widget/CarouselHost$TabSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    return-object v0
.end method

.method initContentCursor()V
    .locals 3

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/fragment/widget/CarouselSetting;->TASKCONTENTCOLUMNS:[Ljava/lang/String;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mContentCursor:Landroid/database/MatrixCursor;

    return-void
.end method

.method isProviderAP(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    invoke-virtual {v1, p2, p3}, Lcom/htc/fragment/widget/TaskInfo;->syncWithDatabase(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v2, v1, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    if-nez v2, :cond_0

    const/16 v2, 0x3ed

    aput v2, p4, v4

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p5, v4

    return-void

    :cond_0
    const/16 v2, 0x3ee

    aput v2, p4, v4

    goto :goto_0

    :cond_1
    const/16 v2, 0x3f0

    aput v2, p4, v4

    goto :goto_0
.end method

.method public notifyDataSetChanged(Landroid/database/Cursor;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselModel;->updateHashTable(Landroid/database/Cursor;)V

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselModel;->buildContentCursor(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getStateMode()I

    move-result v3

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getBackUpCurrentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    goto :goto_1
.end method

.method public onAddTabComplete()V
    .locals 4

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselModel$Row;

    iget-object v2, v2, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->setWidgetAdapterCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/fragment/widget/CarouselModel;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/fragment/widget/CarouselModel;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_3
    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselModel;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_4
    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselModel;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_2
        0x3f0 -> :sswitch_0
        0x44c -> :sswitch_3
        0x44d -> :sswitch_4
    .end sparse-switch
.end method

.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method

.method public onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const-string v2, "CarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExceptionHandle: token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cookie="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", uri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", values="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", selection="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", selectionArgs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p7, :cond_1

    move-object v1, p7

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/widget/CarouselFragment;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    invoke-direct {p0, p1, p4}, Lcom/htc/fragment/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_2

    :sswitch_1
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    invoke-direct {p0, p1, p4}, Lcom/htc/fragment/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_2

    :sswitch_2
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    invoke-direct {p0, p1, p4}, Lcom/htc/fragment/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_2

    :sswitch_3
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    invoke-direct {p0, p2}, Lcom/htc/fragment/widget/CarouselModel;->addTabMemoryModeAfterBatch(Ljava/lang/Object;)V

    goto :goto_2

    :sswitch_4
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_2
        0x3ef -> :sswitch_0
    .end sparse-switch
.end method

.method public onGlobalLayout()V
    .locals 0

    return-void
.end method

.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_3

    const/4 v1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->setBinAdapterCursor(Landroid/database/Cursor;)V

    if-nez v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/htc/fragment/widget/SafeCursor;

    invoke-direct {v1, v0, p3}, Lcom/htc/fragment/widget/SafeCursor;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->setWidgetAdapterCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->updateWidget(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->onTaskSync()V

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->updateWidget(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 4

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    iget v1, v0, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/fragment/widget/TaskInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/16 v1, 0x44c

    aput v1, p3, v3

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/fragment/widget/TaskInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/16 v1, 0x44d

    aput v1, p3, v3

    goto :goto_0
.end method

.method removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x4b0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task_tag=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v5, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "alternate_name"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "alternativeName"

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "alternate_name"

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3ef

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "alternate_name"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "alternativeName"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "alternate_name"

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 9

    const/4 v8, -0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "count_text"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "countText"

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "count_text"

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3eb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return v8
.end method

.method setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "count_text_visible"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-ne p3, v5, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countTextVisible"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "countTextVisible"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3ec

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return v8

    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countTextVisible"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "countTextVisible"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    const-string v0, "gId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    return-void
.end method

.method public startProcessingOperations(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->IsProcessingRightAway()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselModel;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startProcessingOperations()V

    :cond_1
    return-void
.end method

.method syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 8

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-virtual {p2, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const-string v7, "task_tag"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->closeTabByTag(Ljava/lang/String;)V

    :cond_3
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->doClean()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method updateHashTable(Landroid/database/Cursor;)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mCarousel:Ljava/lang/ref/WeakReference;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual/range {v31 .. v31}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v7

    :try_start_0
    const-string v31, "task_tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v31, "task_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v31, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v31, "res_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v31, "icon_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v31, "selected_icon_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v31, "overlay_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v31, "count_text"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v31, "count_text_visible"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v31, "alternative_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v31

    if-gtz v31, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    const/16 v31, 0x0

    :try_start_1
    move/from16 v0, v31

    invoke-static {v15, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    if-eqz v30, :cond_3

    new-instance v29, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct/range {v29 .. v29}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTabID:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v15, v0, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v12, v0, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v8, v0, Lcom/htc/fragment/widget/TaskInfo;->countText:Ljava/lang/String;

    move/from16 v0, v17

    move-object/from16 v1, v29

    iput v0, v1, Lcom/htc/fragment/widget/TaskInfo;->isCountTextVisible:I

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/htc/fragment/widget/TaskInfo;->alternativeName:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->removeFragmentIfRunning(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Lcom/htc/fragment/widget/TaskInfo;)V

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v31

    if-nez v31, :cond_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    goto :goto_1

    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v25

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v31

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/htc/fragment/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v32

    invoke-static/range {v21 .. v22}, Lcom/htc/fragment/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v30

    if-nez v5, :cond_4

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v30

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselModel;->mTasks:Ljava/util/Map;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v31

    throw v31

    :cond_4
    :try_start_3
    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v30

    goto :goto_2
.end method

.method public updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 12

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselModel;->initialMemoryModeCursor()V

    :cond_0
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    :cond_1
    const/4 v7, 0x0

    move-object v9, p2

    check-cast v9, Landroid/net/Uri;

    const-string v10, "taskTag"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/fragment/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/fragment/widget/CarouselModel$Row;

    :cond_2
    if-eqz v7, :cond_3

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v10, "countText"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "count_text"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iget-object v10, v7, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aput-object v2, v10, v3

    goto :goto_0

    :pswitch_2
    const-string v10, "countTextVisible"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "count_text_visible"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iget-object v10, v7, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    goto :goto_0

    :pswitch_3
    const-string v10, "alternativeName"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "alternative_name"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iget-object v10, v7, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aput-object v0, v10, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
