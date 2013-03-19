.class public Lcom/htc/fragment/content/CarouselProvider;
.super Landroid/content/ContentProvider;
.source "CarouselProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALTERNATIVE_NAME:I = 0x6a

.field private static final COUNT_TEXT:I = 0x66

.field private static final COUNT_TEXT_VISIBLE:I = 0x67

.field private static final DATABASE_NAME:Ljava/lang/String; = "carousel.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final LOCAL_LOGV:Z = false

.field private static final REMOVE_TASK:I = 0x69

.field private static final REORDER_TASK:I = 0x65

.field private static TAG:Ljava/lang/String; = null

.field private static final TASK:I = 0x64

.field private static final TIP:I = 0xc8


# instance fields
.field private final URI_MATCHER:Landroid/content/UriMatcher;

.field private mAuthority:Ljava/lang/String;

.field private mCarouselUri:Landroid/net/Uri;

.field mNeedsToNotify:Z

.field private mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "CarouselProvider"

    sput-object v0, Lcom/htc/fragment/content/CarouselProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/content/CarouselProvider;->mNeedsToNotify:Z

    .line 370
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/htc/fragment/content/CarouselProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method private deleteUtil(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 60
    const-string v3, "gId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, tabId:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 62
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/content/CarouselProvider;->mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 66
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "tasks"

    invoke-direct {p0, v2, p2}, Lcom/htc/fragment/content/CarouselProvider;->whereWithTabId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, count:I
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 69
    return v0
.end method

.method private inserUtil(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 96
    iget-object v7, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 97
    .local v1, match:I
    const/16 v7, 0x64

    if-ne v1, v7, :cond_3

    .line 98
    const-string v7, "gId"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, tabId:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 100
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 104
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "tab_id"

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v7, p0, Lcom/htc/fragment/content/CarouselProvider;->mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "tasks"

    invoke-virtual {v0, v7, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 108
    .local v2, rowId:J
    cmp-long v7, v2, v8

    if-gtz v7, :cond_2

    .line 121
    .end local v4           #tabId:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    .line 111
    .restart local v4       #tabId:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    move-object v6, p1

    .line 112
    goto :goto_0

    .line 115
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #rowId:J
    .end local v4           #tabId:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 116
    .restart local v5       #values:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/htc/fragment/content/CarouselProvider;->mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v7, "tips"

    invoke-virtual {v0, v7, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 118
    .restart local v2       #rowId:J
    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    .line 120
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    move-object v6, p1

    .line 121
    goto :goto_0
.end method

.method private static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/4 v3, 0x3

    .line 411
    if-eq p2, v3, :cond_0

    .line 412
    sget-object v0, Lcom/htc/fragment/content/CarouselProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 415
    :cond_0
    if-le p1, p2, :cond_1

    .line 416
    sget-object v0, Lcom/htc/fragment/content/CarouselProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 421
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 422
    const-string v0, "DROP TABLE IF EXISTS tasks"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    const-string v0, "DROP TABLE IF EXISTS tips"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    const-string v0, "DROP TRIGGER IF EXISTS add_task_host"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 425
    const-string v0, "DROP TRIGGER IF EXISTS remove_task_host"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    const-string v0, "DROP TRIGGER IF EXISTS remove_from_db"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    const-string v0, "DROP TRIGGER IF EXISTS insert_to_db0"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    const-string v0, "DROP TRIGGER IF EXISTS insert_to_db1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    const-string v0, "CREATE TABLE IF NOT EXISTS tasks (_id INTEGER PRIMARY KEY,task_tag TEXT NOT NULL,task_name TEXT,alternative_name TEXT DEFAULT NULL,intent TEXT,res_package TEXT,icon_resource TEXT,selected_icon_resource TEXT,overlay_resource TEXT,task_order INTEGER NOT NULL DEFAULT 0,is_host INTEGER NOT NULL,tab_id TEXT NOT NULL DEFAULT 0,count_text TEXT NOT NULL DEFAULT \'0\',count_text_visible INTEGER NOT NULL DEFAULT 0,is_removable INTEGER NOT NULL DEFAULT 1,UNIQUE (task_tag, tab_id));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const-string v0, "CREATE TRIGGER IF NOT EXISTS add_task_host UPDATE OF is_host ON tasks WHEN old.is_host == 0 AND new.is_host == 1 BEGIN UPDATE tasks SET task_order = task_order - 1 WHERE task_order > old.task_order AND _id != old._id AND tab_id == old.tab_id AND is_host == 0 ;UPDATE tasks SET task_order = task_order + 1 WHERE task_order >= new.task_order AND _id != old._id AND tab_id == old.tab_id AND is_host == 1 ;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    const-string v0, "CREATE TRIGGER IF NOT EXISTS remove_task_host UPDATE OF is_host ON tasks WHEN old.is_host == 1 AND new.is_host == 0 BEGIN UPDATE tasks SET task_order = task_order - 1 WHERE task_order > new.task_order AND _id != old._id AND tab_id == old.tab_id AND is_host == 1 ;UPDATE tasks SET task_order = 1 + (SELECT COUNT(*) FROM tasks WHERE is_host == 0) WHERE _id == old._id ;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 470
    const-string v0, "CREATE TRIGGER IF NOT EXISTS remove_from_db BEFORE DELETE ON tasks BEGIN UPDATE tasks SET task_order = task_order - 1 WHERE task_order > old.task_order AND _id != old._id AND tab_id == old.tab_id AND is_host == old.is_host;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    const-string v0, "CREATE TRIGGER IF NOT EXISTS insert_to_db0 AFTER INSERT ON tasks WHEN new.is_host == 0 BEGIN UPDATE tasks SET task_order = (SELECT COUNT(*) FROM tasks WHERE is_host == 0 AND tab_id == new.tab_id) WHERE _id == new._id ;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    const-string v0, "CREATE TRIGGER IF NOT EXISTS insert_to_db1 AFTER INSERT ON tasks WHEN new.is_host == 1 BEGIN UPDATE tasks SET task_order = (SELECT COUNT(*) FROM tasks WHERE is_host == 1 AND tab_id == new.tab_id) WHERE _id == new._id ;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 491
    :cond_2
    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    .line 492
    const-string v0, "CREATE TABLE IF NOT EXISTS tips (_id INTERGER PRIMARY KEY,first_time INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 499
    :cond_3
    if-ge p1, v3, :cond_4

    .line 500
    const-string v0, "ALTER TABLE tasks ADD COLUMN is_updated INTEGER NULL NULL DEFAULT 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 502
    :cond_4
    return-void
.end method

.method private updateUtil(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 229
    .local v13, match:I
    const/4 v5, 0x0

    .line 230
    .local v5, count:I
    const-string v19, "gId"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, tabId:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 233
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown URI: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 236
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/content/CarouselProvider;->mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 237
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 238
    packed-switch v13, :pswitch_data_0

    .line 310
    :pswitch_0
    :try_start_0
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid URI "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 313
    :catchall_0
    move-exception v19

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 240
    :pswitch_1
    :try_start_1
    const-string v19, "tasks"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v14, v1}, Lcom/htc/fragment/content/CarouselProvider;->whereWithTabId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 313
    :goto_0
    monitor-exit p0

    .line 315
    return v5

    .line 243
    :pswitch_2
    const-string v19, "from"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, from:Ljava/lang/String;
    const-string/jumbo v19, "to"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 245
    .local v18, to:Ljava/lang/String;
    const-string v19, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 246
    .local v12, id:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 247
    .local v10, iFrom:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 248
    .local v11, iTo:I
    if-le v10, v11, :cond_1

    .line 249
    const-string v19, "UPDATE tasks SET task_order = task_order +1 WHERE task_order >= ? AND task_order < ? AND is_host == 1 AND tab_id == ?"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    aput-object v9, v20, v21

    const/16 v21, 0x2

    aput-object v14, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    sub-int v19, v10, v11

    add-int/lit8 v5, v19, 0x1

    .line 259
    :goto_1
    const-string v19, "UPDATE tasks SET task_order = ? WHERE _id = ? AND tab_id == ?"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v14, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_1
    const-string v19, "UPDATE tasks SET task_order = task_order -1 WHERE task_order <= ? AND task_order > ? AND is_host == 1 AND tab_id == ?"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    aput-object v9, v20, v21

    const/16 v21, 0x2

    aput-object v14, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    sub-int v19, v11, v10

    add-int/lit8 v5, v19, 0x1

    goto :goto_1

    .line 265
    .end local v9           #from:Ljava/lang/String;
    .end local v10           #iFrom:I
    .end local v11           #iTo:I
    .end local v12           #id:Ljava/lang/String;
    .end local v18           #to:Ljava/lang/String;
    :pswitch_3
    const-string v19, "countText"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, countText:Ljava/lang/String;
    const-string v19, "taskTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 267
    .local v15, taskTag:Ljava/lang/String;
    const-string v19, "UPDATE tasks SET count_text = ? WHERE task_tag = ? AND tab_id == ?"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    const/16 v21, 0x2

    aput-object v14, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    const/4 v5, 0x1

    .line 273
    goto/16 :goto_0

    .line 275
    .end local v6           #countText:Ljava/lang/String;
    .end local v15           #taskTag:Ljava/lang/String;
    :pswitch_4
    const-string v19, "countTextVisible"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 276
    .local v7, countTextVisible:I
    const-string v19, "taskTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 277
    .local v16, taskTag2:Ljava/lang/String;
    const-string v19, "UPDATE tasks SET count_text_visible = ? WHERE task_tag = ? AND tab_id == ?"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v16, v20, v21

    const/16 v21, 0x2

    aput-object v14, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    const/4 v5, 0x1

    .line 283
    goto/16 :goto_0

    .line 285
    .end local v7           #countTextVisible:I
    .end local v16           #taskTag2:Ljava/lang/String;
    :pswitch_5
    const-string v19, "tasks"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 290
    goto/16 :goto_0

    .line 292
    :pswitch_6
    const-string v19, "alternativeName"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, alternativeName:Ljava/lang/String;
    const-string v19, "taskTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 294
    .local v17, taskTag4:Ljava/lang/String;
    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 296
    const-string v19, "UPDATE tasks SET alternative_name = ? WHERE task_tag = ? AND tab_id == ?"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v4, v20, v21

    const/16 v21, 0x1

    aput-object v17, v20, v21

    const/16 v21, 0x2

    aput-object v14, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :goto_2
    const/4 v5, 0x1

    .line 308
    goto/16 :goto_0

    .line 301
    :cond_2
    const-string v19, "UPDATE tasks SET alternative_name = NULL WHERE task_tag = ? AND tab_id == ?"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x1

    aput-object v14, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 238
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private whereWithTabId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tabId"
    .parameter "selection"

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 339
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "tab_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    if-eqz p2, :cond_0

    .line 343
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 168
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/fragment/content/CarouselProvider;->mNeedsToNotify:Z

    .line 169
    iget-object v2, p0, Lcom/htc/fragment/content/CarouselProvider;->mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 170
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 172
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 173
    .local v1, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/fragment/content/CarouselProvider;->mNeedsToNotify:Z

    .line 176
    invoke-virtual {p0}, Lcom/htc/fragment/content/CarouselProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/content/CarouselProvider;->mCarouselUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/content/CarouselProvider;->deleteUtil(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, count:I
    if-lez v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mNeedsToNotify:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/content/CarouselProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 82
    :cond_0
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/16 v3, 0x64

    .line 132
    iget-object v2, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 133
    .local v0, match:I
    if-eq v0, v3, :cond_0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/content/CarouselProvider;->inserUtil(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, result:Landroid/net/Uri;
    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/htc/fragment/content/CarouselProvider;->mNeedsToNotify:Z

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/htc/fragment/content/CarouselProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 143
    :cond_1
    return-object v1
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    new-instance v0, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/fragment/content/CarouselProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    .line 153
    iput-boolean v2, p0, Lcom/htc/fragment/content/CarouselProvider;->mNeedsToNotify:Z

    .line 154
    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 192
    iget-object v2, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 193
    .local v8, match:I
    const/16 v2, 0x64

    if-eq v8, v2, :cond_0

    const/16 v2, 0xc8

    if-eq v8, v2, :cond_0

    .line 194
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    const/16 v2, 0x64

    if-ne v8, v2, :cond_2

    .line 199
    const-string v2, "gId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, tabId:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 201
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 206
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "tasks"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tab_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/htc/fragment/content/CarouselProvider;->mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 210
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 211
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/fragment/content/CarouselProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 223
    .end local v10           #tabId:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 216
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #result:Landroid/database/Cursor;
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 217
    .restart local v0       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v2, "tips"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/htc/fragment/content/CarouselProvider;->mOpenHelper:Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/htc/fragment/content/CarouselProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 220
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 221
    .restart local v9       #result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/fragment/content/CarouselProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected setupCarousel(Ljava/lang/String;)V
    .locals 4
    .parameter "authority"

    .prologue
    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->mCarouselUri:Landroid/net/Uri;

    .line 361
    iget-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "tasks"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    iget-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "reorder_task"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    iget-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "count_text"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    iget-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "count_text_visible"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    iget-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "remove"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    iget-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "alternate_name"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    iget-object v0, p0, Lcom/htc/fragment/content/CarouselProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/htc/fragment/content/CarouselProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tips"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 326
    const-string v2, "gId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, tabId:Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/fragment/content/CarouselProvider;->updateUtil(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 328
    .local v0, count:I
    if-lez v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/fragment/content/CarouselProvider;->mNeedsToNotify:Z

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/htc/fragment/content/CarouselProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/content/CarouselProvider;->mCarouselUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 333
    :cond_0
    return v0
.end method
