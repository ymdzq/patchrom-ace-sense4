.class public Lcom/m0narx/tweaks/settings;
.super Landroid/app/Activity;
.source "settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/settings$ProfileListAdapter;,
        Lcom/m0narx/tweaks/settings$ViewHolder;
    }
.end annotation


# static fields
.field private static ProfileToRestore:Ljava/lang/String; = null

.field public static final author:Ljava/lang/String; = "m0narX"

.field public static final team:Ljava/lang/String; = "PkMn"


# instance fields
.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private ProfileList:Lcom/htc/widget/HtcListView;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbh:Lcom/m0narx/tweaks/provider/DB;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

.field private mRes:Landroid/content/res/Resources;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field private prefXMLFile:Ljava/lang/String;

.field private restartMain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    iput-object v0, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "/data/data/com.m0narx.tweaks/shared_prefs/com.m0narx.tweaks_preferences.xml"

    iput-object v0, p0, Lcom/m0narx/tweaks/settings;->prefXMLFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/settings;->restartMain:Z

    new-instance v0, Lcom/m0narx/tweaks/settings$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/settings$1;-><init>(Lcom/m0narx/tweaks/settings;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/settings;->handler:Landroid/os/Handler;

    return-void
.end method

.method private LoadData()V
    .locals 4

    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT id, name FROM profiles;"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private NewProfile(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x0

    const-string v0, "newprofile"

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    const/4 v4, 0x1

    :goto_0
    if-eqz v7, :cond_4

    move-object p1, v2

    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "INSERT INTO profiles(name) VALUES(\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT id, name FROM profiles;"

    invoke-virtual {v8, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".csv"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v8

    if-eqz v8, :cond_3

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sqlite3 /data/data/com.android.providers.settings/databases/settings.db \"select name,value from system where name like \'tweaks_%\' or name like \'battery_%\'\" >"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->prefXMLFile:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v8, p1, v0}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v8}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SELECT id, name FROM profiles WHERE name LIKE \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\';"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    const/4 v7, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private RenameProfile(ILjava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p2

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    move-object p2, v0

    iget-object v4, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UPDATE profiles SET name = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' WHERE id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v6, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->renameItem(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT id, name FROM profiles WHERE name LIKE \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\';"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private SaveProfile(ZI)V
    .locals 5

    new-instance v1, Lcom/htc/widget/HtcEditText;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a00a9

    if-nez p1, :cond_0

    const v0, 0x7f0a00aa

    iget-object v2, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v2, p2}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setTextColor(I)V

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/settings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a007e

    new-instance v4, Lcom/m0narx/tweaks/settings$7;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/m0narx/tweaks/settings$7;-><init>(Lcom/m0narx/tweaks/settings;Lcom/htc/widget/HtcEditText;ZI)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0034

    new-instance v4, Lcom/m0narx/tweaks/settings$8;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/settings$8;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/settings;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/settings;->restartPhone()V

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/settings;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/settings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m0narx/tweaks/settings;->restartMain:Z

    return v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/settings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/settings;->SaveProfile(ZI)V

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/settings;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/settings;->restoreProfile(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/settings;->NewProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/settings;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/settings;->RenameProfile(ILjava/lang/String;)V

    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x400

    new-array v0, v2, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private removeProfile(I)V
    .locals 8

    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v5, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".csv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DELETE FROM profiles WHERE id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v7, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v5, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->removeItem(I)V

    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private restartPhone()V
    .locals 3

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007e

    new-instance v2, Lcom/m0narx/tweaks/settings$5;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/settings$5;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0034

    new-instance v2, Lcom/m0narx/tweaks/settings$6;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/settings$6;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method private restoreProfile(Ljava/lang/Integer;)V
    .locals 4

    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v2, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public isInteger(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    iget-object v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/settings$ViewHolder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    const/4 v4, 0x0

    iget-object v2, v0, Lcom/m0narx/tweaks/settings$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/m0narx/tweaks/settings;->SaveProfile(ZI)V

    move v2, v3

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Lcom/m0narx/tweaks/settings$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/settings;->removeProfile(I)V

    move v2, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080010
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->mRes:Landroid/content/res/Resources;

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->inflater:Landroid/view/LayoutInflater;

    new-instance v7, Lcom/m0narx/tweaks/provider/DB;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/provider/DB;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->dbh:Lcom/m0narx/tweaks/provider/DB;

    invoke-virtual {v7}, Lcom/m0narx/tweaks/provider/DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    const v7, 0x7f0a00a7

    invoke-static {p0, v7}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    const v7, 0x7f03000e

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/settings;->setContentView(I)V

    const v7, 0x7f080009

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/settings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcFooterButton;

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->SaveB:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v8, 0x7f0a00a9

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v8, 0x20800c1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    const v7, 0x7f080008

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/settings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcFooterButton;

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->CancelB:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v8, 0x7f0a00ab

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v8, 0x20800a3

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v8, Lcom/m0narx/tweaks/settings$2;

    invoke-direct {v8, p0}, Lcom/m0narx/tweaks/settings$2;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v8, Lcom/m0narx/tweaks/settings$3;

    invoke-direct {v8, p0}, Lcom/m0narx/tweaks/settings$3;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f080002

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/settings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListView;

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    new-instance v8, Lcom/m0narx/tweaks/settings$4;

    invoke-direct {v8, p0}, Lcom/m0narx/tweaks/settings$4;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    new-instance v7, Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;-><init>(Lcom/m0narx/tweaks/settings;)V

    iput-object v7, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a00ae

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Default"

    invoke-virtual {v7, v8, v9}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    const-string v7, ""

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    array-length v8, v3

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v8, :cond_0

    invoke-direct {p0}, Lcom/m0narx/tweaks/settings;->LoadData()V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0, v7}, Lcom/m0narx/tweaks/settings;->registerForContextMenu(Landroid/view/View;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :catch_0
    move-exception v1

    const-string v7, "tag"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    aget-object v2, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0, v4, v6}, Lcom/m0narx/tweaks/settings;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_2

    :catch_2
    move-exception v9

    move-object v5, v6

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080002

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    iget v3, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v2, 0x7f0c

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 14

    sget-object v10, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".csv"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-nez v8, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v7, Ljava/io/File;

    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->prefXMLFile:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_2
    invoke-static {v6, v7}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/m0narx/tweaks/settings;->restartMain:Z

    const/4 v10, 0x2

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_3
    return-void

    :cond_1
    :try_start_3
    const-string v10, "\\|"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/settings;->isInteger(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_2
    :try_start_4
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v10

    goto/16 :goto_1

    :catch_2
    move-exception v10

    goto :goto_2
.end method
